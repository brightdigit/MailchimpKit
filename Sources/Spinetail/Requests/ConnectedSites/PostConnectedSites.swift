import Foundation
import PrchModel

public extension AutomationsAutomationsConnectedSites {
  /**
   Add connected site

   Create a new Mailchimp connected site.
   */
  struct PostConnectedSites: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/connected-sites"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postConnectedSites", tag: "connectedSites", method: "POST", path: "/connected-sites", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = ConnectedSiteModel
    public typealias BodyType = ConnectedSite1Model

    public let body: ConnectedSite1Model
  }
}
