import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Delete product variant

   Delete a product variant.
   */
  struct DeleteEcommerceStoresIdProductsIdVariantsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "product_id" + "}", with: "\(productId)").replacingOccurrences(of: "{" + "variant_id" + "}", with: "\(variantId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The store id. */
    public let storeId: String

    /** The id for the product of a store. */
    public let productId: String

    /** The id for the product variant. */
    public let variantId: String

    public init(storeId: String, productId: String, variantId: String) {
      self.storeId = storeId
      self.productId = productId
      self.variantId = variantId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
