import Foundation
import PrchModel

public extension VerifiedDomains {
  /**
   Get domain info

   Get the details for a single domain on the account.
   */
  struct GetVerifiedDomain: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/verified-domains/{domain_name}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "domain_name" + "}", with: "\(domainName)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The domain name. */
    public let domainName: String

    public init(domainName: String) {
      self.domainName = domainName
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = VerifiedDomainsModel
    public typealias BodyType = Empty
  }
}
