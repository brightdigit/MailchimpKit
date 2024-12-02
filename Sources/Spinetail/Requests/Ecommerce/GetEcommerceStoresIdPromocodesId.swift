import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Get promo code

   Get information about a specific promo code.
   */
  struct GetEcommerceStoresIdPromocodesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "promo_rule_id" + "}", with: "\(promoRuleId)").replacingOccurrences(of: "{" + "promo_code_id" + "}", with: "\(promoCodeId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The store id. */
    public let storeId: String

    /** The id for the promo rule of a store. */
    public let promoRuleId: String

    /** The id for the promo code of a store. */
    public let promoCodeId: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, storeId: String, promoRuleId: String, promoCodeId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.storeId = storeId
      self.promoRuleId = promoRuleId
      self.promoCodeId = promoCodeId
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommercePromoCode
    public typealias BodyType = Empty
  }
}
