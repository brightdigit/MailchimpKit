import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Add or update product variant

   Add or update a product variant.
   */
  struct PutEcommerceStoresIdProductsIdVariantsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "product_id" + "}", with: "\(productId)").replacingOccurrences(of: "{" + "variant_id" + "}", with: "\(variantId)")
    }

    public var method: RequestMethod {
      .PUT
    }

    /** The store id. */
    public let storeId: String

    /** The id for the product of a store. */
    public let productId: String

    /** The id for the product variant. */
    public let variantId: String

    public init(body: ECommerceProductVariant1, storeId: String, productId: String, variantId: String) {
      self.body = body
      self.storeId = storeId
      self.productId = productId
      self.variantId = variantId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommerceProductVariant
    public typealias BodyType = ECommerceProductVariant1

    public let body: ECommerceProductVariant1
  }
}
