import Foundation
import PrchModel

public extension VerifiedDomains {
  /**
   Verify domain

   Verify a domain for sending.
   */
  struct VerifyDomain: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/verified-domains/{domain_name}/actions/verify"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "domain_name" + "}", with: "\(domainName)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The domain name. */
    public let domainName: String

    public init(body: VerifyaDomainForSending, domainName: String) {
      self.body = body
      self.domainName = domainName
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = VerifiedDomainsModel
    public typealias BodyType = VerifyaDomainForSending

    public let body: VerifyaDomainForSending
  }
}
