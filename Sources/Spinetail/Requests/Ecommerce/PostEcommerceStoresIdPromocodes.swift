import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Add promo code

   Add a new promo code to a store.
   */
  struct PostEcommerceStoresIdPromocodes: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "promo_rule_id" + "}", with: "\(promoRuleId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The store id. */
    public let storeId: String

    /** The id for the promo rule of a store. */
    public let promoRuleId: String

    public init(body: ECommercePromoCode1, storeId: String, promoRuleId: String) {
      self.body = body
      self.storeId = storeId
      self.promoRuleId = promoRuleId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommercePromoCode
    public typealias BodyType = ECommercePromoCode1

    public let body: ECommercePromoCode1
  }
}
