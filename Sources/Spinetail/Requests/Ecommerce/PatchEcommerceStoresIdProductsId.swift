import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Update product

   Update a specific product.
   */
  struct PatchEcommerceStoresIdProductsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/products/{product_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "product_id" + "}", with: "\(productId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The store id. */
    public let storeId: String

    /** The id for the product of a store. */
    public let productId: String

    public init(body: ECommerceProduct2, storeId: String, productId: String) {
      self.body = body
      self.storeId = storeId
      self.productId = productId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ECommerceProduct
    public typealias BodyType = ECommerceProduct2

    public let body: ECommerceProduct2
  }
}
