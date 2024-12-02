import Foundation
import PrchModel

public extension ConnectedSites {
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

    public init(body: ConnectedSite1) {
      self.body = body
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ConnectedSite
    public typealias BodyType = ConnectedSite1

    public let body: ConnectedSite1
  }
}
