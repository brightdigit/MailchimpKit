import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Add promo rule

   Add a new promo rule to a store.
   */
  struct PostEcommerceStoresIdPromorules: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/promo-rules"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The store id. */
    public let storeId: String

    public init(body: ECommercePromoRule1, storeId: String) {
      self.body = body
      self.storeId = storeId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommercePromoRule
    public typealias BodyType = ECommercePromoRule1

    public let body: ECommercePromoRule1
  }
}
