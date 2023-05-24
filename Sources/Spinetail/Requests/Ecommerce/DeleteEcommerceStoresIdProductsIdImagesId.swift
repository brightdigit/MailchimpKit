import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Delete product image

   Delete a product image.
   */
  struct DeleteEcommerceStoresIdProductsIdImagesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/products/{product_id}/images/{image_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "product_id" + "}", with: "\(productId)").replacingOccurrences(of: "{" + "image_id" + "}", with: "\(imageId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The store id. */
    public var storeId: String

    /** The id for the product of a store. */
    public var productId: String

    /** The id for the product image. */
    public var imageId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
