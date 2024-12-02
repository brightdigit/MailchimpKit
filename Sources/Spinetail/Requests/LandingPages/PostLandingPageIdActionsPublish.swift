import Foundation
import PrchModel

public extension LandingPages {
  /**
   Publish landing page

   Publish a landing page that is in draft, unpublished, or has been previously published and edited.
   */
  struct PostLandingPageIdActionsPublish: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/landing-pages/{page_id}/actions/publish"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "page_id" + "}", with: "\(pageId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique id for the page. */
    public let pageId: String

    public init(pageId: String) {
      self.pageId = pageId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
