import Foundation
import PrchModel

public extension LandingPages {
  /**
   Update landing page

   Update a landing page.
   */
  struct PatchLandingPageId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/landing-pages/{page_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "page_id" + "}", with: "\(pageId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique id for the page. */
    public let pageId: String

    public init(body: LandingPage2, pageId: String) {
      self.body = body
      self.pageId = pageId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = LandingPage
    public typealias BodyType = LandingPage2

    public let body: LandingPage2
  }
}
