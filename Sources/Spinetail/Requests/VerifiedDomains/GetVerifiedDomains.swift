import Foundation
import PrchModel

public extension VerifiedDomains {
  /**
   List sending domains

   Get all of the sending domains on the account.
   */
  struct GetVerifiedDomains: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/verified-domains"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .GET
    }

    public init() {}

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = VerifiedDomainsModel1
    public typealias BodyType = Empty
  }
}
