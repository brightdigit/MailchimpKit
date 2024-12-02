import Foundation
import PrchModel

public extension ConnectedSites {
  /**
   Delete connected site

   Remove a connected site from your Mailchimp account.
   */
  struct DeleteConnectedSitesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/connected-sites/{connected_site_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "connected_site_id" + "}", with: "\(connectedSiteId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique identifier for the site. */
    public let connectedSiteId: String

    public init(connectedSiteId: String) {
      self.connectedSiteId = connectedSiteId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
