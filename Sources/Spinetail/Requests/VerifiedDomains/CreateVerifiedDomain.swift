import Foundation
import PrchModel

public extension VerifiedDomains {
  /**
   Add domain to account

   Add a domain to the account.
   */
  struct CreateVerifiedDomain: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/verified-domains"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public init(body: VerifiedDomainsModel2) {
      self.body = body
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = VerifiedDomainsModel
    public typealias BodyType = VerifiedDomainsModel2

    public let body: VerifiedDomainsModel2
  }
}
