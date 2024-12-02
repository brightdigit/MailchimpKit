import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Update promo rule

   Update a promo rule.
   */
  struct PatchEcommerceStoresIdPromorulesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "promo_rule_id" + "}", with: "\(promoRuleId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The store id. */
    public let storeId: String

    /** The id for the promo rule of a store. */
    public let promoRuleId: String

    public init(body: ECommercePromoRule2, storeId: String, promoRuleId: String) {
      self.body = body
      self.storeId = storeId
      self.promoRuleId = promoRuleId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommercePromoRule
    public typealias BodyType = ECommercePromoRule2

    public let body: ECommercePromoRule2
  }
}
