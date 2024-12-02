import Foundation
import PrchModel

public extension AccountExports {
  /**
   Add export

   Create a new account export in your Mailchimp account.
   */
  struct PostAccountExport: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/account-exports"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public init(body: CreateAnAccountExport) {
      self.body = body
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = AccountExportsInner
    public typealias BodyType = CreateAnAccountExport

    public let body: CreateAnAccountExport
  }
}
