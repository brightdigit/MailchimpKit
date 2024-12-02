import Foundation
import PrchModel

public extension Ping {
  /**
   Ping

   A health check for the API that won't return any account-specific information.
   */
  struct GetPing: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ping"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .GET
    }

    public init() {}

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = APIHealthStatus
    public typealias BodyType = Empty
  }
}
