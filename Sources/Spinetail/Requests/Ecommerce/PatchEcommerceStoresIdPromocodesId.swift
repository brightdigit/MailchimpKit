import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Update promo code

   Update a promo code.
   */
  struct PatchEcommerceStoresIdPromocodesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "promo_rule_id" + "}", with: "\(promoRuleId)").replacingOccurrences(of: "{" + "promo_code_id" + "}", with: "\(promoCodeId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The store id. */
    public let storeId: String

    /** The id for the promo rule of a store. */
    public let promoRuleId: String

    /** The id for the promo code of a store. */
    public let promoCodeId: String

    public init(body: ECommercePromoCode2, storeId: String, promoRuleId: String, promoCodeId: String) {
      self.body = body
      self.storeId = storeId
      self.promoRuleId = promoRuleId
      self.promoCodeId = promoCodeId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommercePromoCode
    public typealias BodyType = ECommercePromoCode2

    public let body: ECommercePromoCode2
  }
}
