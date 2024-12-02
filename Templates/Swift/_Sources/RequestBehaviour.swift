{ % include "Includes/Header.stencil" % }

import Foundation

public protocol RequestBehaviour {
  /// runs first and allows the requests to be modified. If modifying asynchronously use validate
  func modifyRequest(request: AnyRequest, urlRequest: URLRequest) -> URLRequest

  /// validates and modifies the request. complete must be called with either .success or .fail
  func validate(request: AnyRequest, urlRequest: URLRequest, complete: @escaping (RequestValidationResult) -> Void)

  /// called before request is sent
  func beforeSend(request: AnyRequest)

  /// called when request successfuly returns a 200 range response
  func onSuccess(request: AnyRequest, result: Any)

  /// called when request fails with an error. This will not be called if the request returns a known response even if the a status code is out of the 200 range
  func onFailure(request: AnyRequest, error: APIClientError)

  /// called if the request recieves a network response. This is not called if request fails validation or encoding
  func onResponse(request: AnyRequest, response: AnyResponse)
}

public enum RequestValidationResult {
  case success(URLRequest)
  case failure(Error)
}

// Provides empty defaults so that each function becomes optional
public extension RequestBehaviour {
  func modifyRequest(request _: AnyRequest, urlRequest: URLRequest) -> URLRequest { urlRequest }
  func validate(request _: AnyRequest, urlRequest: URLRequest, complete: @escaping (RequestValidationResult) -> Void) {
    complete(.success(urlRequest))
  }

  func beforeSend(request _: AnyRequest) {}
  func onSuccess(request _: AnyRequest, result _: Any) {}
  func onFailure(request _: AnyRequest, error _: APIClientError) {}
  func onResponse(request _: AnyRequest, response _: AnyResponse) {}
}

// Group different RequestBehaviours together
struct RequestBehaviourGroup {
  let request: AnyRequest
  let behaviours: [RequestBehaviour]

  init<T>(request: APIRequest<T>, behaviours: [RequestBehaviour]) {
    self.request = request.asAny()
    self.behaviours = behaviours
  }

  func beforeSend() {
    behaviours.forEach {
      $0.beforeSend(request: request)
    }
  }

  func validate(_ urlRequest: URLRequest, complete: @escaping (RequestValidationResult) -> Void) {
    if behaviours.isEmpty {
      complete(.success(urlRequest))
      return
    }

    var count = 0
    var modifiedRequest = urlRequest
    func validateNext() {
      let behaviour = behaviours[count]
      behaviour.validate(request: request, urlRequest: modifiedRequest) { result in
        count += 1
        switch result {
        case let .success(urlRequest):
          modifiedRequest = urlRequest
          if count == self.behaviours.count {
            complete(.success(modifiedRequest))
          } else {
            validateNext()
          }
        case let .failure(error):
          complete(.failure(error))
        }
      }
    }
    validateNext()
  }

  func onSuccess(result: Any) {
    behaviours.forEach {
      $0.onSuccess(request: request, result: result)
    }
  }

  func onFailure(error: APIClientError) {
    behaviours.forEach {
      $0.onFailure(request: request, error: error)
    }
  }

  func onResponse(response: AnyResponse) {
    behaviours.forEach {
      $0.onResponse(request: request, response: response)
    }
  }

  func modifyRequest(_ urlRequest: URLRequest) -> URLRequest {
    var urlRequest = urlRequest
    behaviours.forEach {
      urlRequest = $0.modifyRequest(request: request, urlRequest: urlRequest)
    }
    return urlRequest
  }
}

// MARK: Type erased Requests and Responses

public typealias AnyResponse = APIResponse<AnyResponseValue>

public class AnyRequest: APIRequest<AnyResponseValue> {
  private let requestPath: String

  override public var path: String {
    requestPath
  }

  init<T>(request: APIRequest<T>) {
    requestPath = request.path
    super.init(service: request.service.asAny(), queryParameters: request.queryParameters, formParameters: request.formParameters, headers: request.headers, encodeBody: request.encodeBody)
  }
}

public struct AnyResponseValue: APIResponseValue, CustomDebugStringConvertible, CustomStringConvertible {
  public typealias SuccessType = { % if options.codableResponses % } AnyCodable { % else % } Any { % endif % }

  public let statusCode: Int
  public let successful: Bool
  public let response: Any
  public let responseEnum: Any
  public let success: { % if options.codableResponses % } AnyCodable { % else % } Any { % endif % }?

  public init(statusCode: Int, successful: Bool, response: Any, responseEnum: Any, success: { % if options.codableResponses % } AnyCodable { % else % } Any { % endif % }?) {
    self.statusCode = statusCode
    self.successful = successful
    self.response = response
    self.responseEnum = responseEnum
    self.success = success
  }

  public init(statusCode _: Int, data _: Data, decoder _: ResponseDecoder) throws {
    fatalError()
  }

  public var description: String {
    "\(responseEnum)"
  }

  public var debugDescription: String {
    if let debugDescription = responseEnum as? CustomDebugStringConvertible {
      return debugDescription.debugDescription
    } else {
      return "\(responseEnum)"
    }
  }
}

public extension APIResponseValue {
  func asAny() -> AnyResponseValue {
    AnyResponseValue(statusCode: statusCode, successful: successful, response: response, responseEnum: self, success: { % if options.codableResponses % } AnyCodable(success) { % else % } success { % endif % })
  }
}

public extension APIResponse {
  func asAny() -> APIResponse<AnyResponseValue> {
    APIResponse<AnyResponseValue>(request: request.asAny(), result: result.map { $0.asAny() }, urlRequest: urlRequest, urlResponse: urlResponse, data: data, metrics: metrics)
  }
}

public extension APIRequest {
  func asAny() -> AnyRequest {
    AnyRequest(request: self)
  }
}

public extension APIService {
  func asAny() -> APIService<AnyResponseValue> {
    APIService<AnyResponseValue>(id: id, tag: tag, method: method, path: path, hasBody: hasBody, securityRequirements: securityRequirements)
  }
}
