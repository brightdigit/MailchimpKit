import Foundation
import PrchModel

public extension LandingPages {
  /**
   Add landing page

   Create a new Mailchimp landing page.
   */
  struct PostAllLandingPages: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/landing-pages"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    /** Will create the Landing Page using the account's Default List instead of requiring a list_id. */
    public let useDefaultList: Bool?

    public init(body: LandingPage1, useDefaultList: Bool? = nil) {
      self.body = body
      self.useDefaultList = useDefaultList
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let useDefaultList = self.useDefaultList {
        params["use_default_list"] = String(describing: useDefaultList)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = LandingPage
    public typealias BodyType = LandingPage1

    public let body: LandingPage1
  }
}
