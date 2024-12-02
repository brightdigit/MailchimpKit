import Foundation
import PrchModel

public extension ConnectedSites {
  /**
   Verify connected site script

   Verify that the connected sites script has been installed, either via the script URL or fragment.
   */
  struct PostConnectedSitesIdActionsVerifyScriptInstallation: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/connected-sites/{connected_site_id}/actions/verify-script-installation"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "connected_site_id" + "}", with: "\(connectedSiteId)")
    }

    public var method: RequestMethod {
      .POST
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
