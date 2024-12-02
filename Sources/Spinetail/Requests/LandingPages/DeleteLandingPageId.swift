import Foundation
import PrchModel

public extension LandingPages {
  /**
   Delete landing page

   Delete a landing page.
   */
  struct DeleteLandingPageId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/landing-pages/{page_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "page_id" + "}", with: "\(pageId)")
    }

    public var method: RequestMethod {
      .DELETE
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
