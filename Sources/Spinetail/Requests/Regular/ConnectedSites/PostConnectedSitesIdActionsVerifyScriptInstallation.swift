import Foundation
import Prch

#if !os(watchOS)
  public extension ConnectedSites {
    /**
     Verify connected site script

     Verify that the connected sites script has been installed, either via the script URL or fragment.
     */
    enum PostConnectedSitesIdActionsVerifyScriptInstallation {
      public static let service = Service<Response>(id: "postConnectedSitesIdActionsVerifyScriptInstallation", tag: "connectedSites", method: "POST", path: "/connected-sites/{connected_site_id}/actions/verify-script-installation", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

      public struct Request: ServiceRequest {
        public struct Options {
          /** The unique identifier for the site. */
          public var connectedSiteId: String

          public init(connectedSiteId: String) {
            self.connectedSiteId = connectedSiteId
          }
        }

        public var options: Options

        public init(options: Options) {
          self.options = options
        }

        public typealias ResponseType = Response

        public var service: Service<Response> {
          PostConnectedSitesIdActionsVerifyScriptInstallation.service
        }

        /// convenience initialiser so an Option doesn't have to be created
        public init(connectedSiteId: String) {
          let options = Options(connectedSiteId: connectedSiteId)
          self.init(options: options)
        }

        public var path: String {
          service.path.replacingOccurrences(of: "{" + "connected_site_id" + "}", with: "\(options.connectedSiteId)")
        }
      }

      public enum Response: DeprecatedResponse, CustomStringConvertible, CustomDebugStringConvertible {
        public typealias APIType = MailchimpAPI

        public typealias SuccessType = Void
        public typealias FailureType = DefaultResponse

        /** Empty Response */
        case status204

        /** An error generated by the Mailchimp API. */
        case defaultResponse(statusCode: Int, DefaultResponse)

        public var success: Void? {
          switch self {
          case .status204: return ()
          default: return nil
          }
        }

        public var failure: DefaultResponse? {
          switch self {
          case let .defaultResponse(_, response): return response
          default: return nil
          }
        }

        /// either success or failure value. Success is anything in the 200..<300 status code range
        @available(*, unavailable)
        public var _obsolete_responseResult: DeprecatedResponseResult<Void, DefaultResponse> {
          if let successValue = success {
            return .success(successValue)
          } else if let failureValue = failure {
            return .failure(failureValue)
          } else {
            fatalError("Response does not have success or failure response")
          }
        }

        public var anyResponse: Any {
          switch self {
          case let .defaultResponse(_, response): return response
          default: return ()
          }
        }

        public var statusCode: Int {
          switch self {
          case .status204: return 204
          case let .defaultResponse(statusCode, _): return statusCode
          }
        }

        public var successful: Bool {
          switch self {
          case .status204: return true
          case .defaultResponse: return false
          }
        }

        public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
          switch statusCode {
          case 204: self = .status204
          default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(DefaultResponse.self, from: data))
          }
        }

        public var description: String {
          "\(statusCode) \(successful ? "success" : "failure")"
        }

        public var debugDescription: String {
          var string = description
          let responseString = "\(anyResponse)"
          if responseString != "()" {
            string += "\n\(responseString)"
          }
          return string
        }
      }
    }
  }
#endif
