import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Add product image

   Add a new image to the product.
   */
  struct PostEcommerceStoresIdProductsIdImages: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/products/{product_id}/images"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "product_id" + "}", with: "\(productId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The store id. */
    public var storeId: String

    /** The id for the product of a store. */
    public var productId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommerceProductImage
    public typealias BodyType = ECommerceProductImage1

    public let body: ECommerceProductImage1
  }
}
