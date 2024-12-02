import Foundation
import PrchModel

public struct Operations: Codable, Equatable, Content {
  /** The HTTP method to use for the operation. */
  public enum Method: String, Codable, Equatable, CaseIterable {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
  }

  /** The HTTP method to use for the operation. */
  public let method: Method

  /** The relative path to use for the operation. */
  public let path: String

  /** A string containing the JSON body to use with the request. */
  public let body: String?

  /** An optional client-supplied id returned with the operation results. */
  public let operationId: String?

  /** Any request query parameters. Example parameters: {"count":10, "offset":0} */
  public let params: [String: String]?

  public init(method: Method, path: String, body: String? = nil, operationId: String? = nil, params: [String: String]? = nil) {
    self.method = method
    self.path = path
    self.body = body
    self.operationId = operationId
    self.params = params
  }

  public enum CodingKeys: String, CodingKey {
    case method
    case path
    case body
    case operationId = "operation_id"
    case params
  }
}
