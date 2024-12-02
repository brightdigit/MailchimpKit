import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Add product variant

   Add a new variant to the product.
   */
  struct PostEcommerceStoresIdProductsIdVariants: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/products/{product_id}/variants"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "product_id" + "}", with: "\(productId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The store id. */
    public let storeId: String

    /** The id for the product of a store. */
    public let productId: String

    public init(body: ECommerceProductVariant1, storeId: String, productId: String) {
      self.body = body
      self.storeId = storeId
      self.productId = productId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommerceProductVariant
    public typealias BodyType = ECommerceProductVariant1

    public let body: ECommerceProductVariant1
  }
}
