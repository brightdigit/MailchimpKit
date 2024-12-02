import Foundation
import PrchModel

public extension Ecommerce {
  /**
   Delete cart line item

   Delete a specific cart line item.
   */
  struct DeleteEcommerceStoresIdCartsLinesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "store_id" + "}", with: "\(storeId)").replacingOccurrences(of: "{" + "cart_id" + "}", with: "\(cartId)").replacingOccurrences(of: "{" + "line_id" + "}", with: "\(lineId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The store id. */
    public let storeId: String

    /** The id for the cart. */
    public let cartId: String

    /** The id for the line item of a cart. */
    public let lineId: String

    public init(storeId: String, cartId: String, lineId: String) {
      self.storeId = storeId
      self.cartId = cartId
      self.lineId = lineId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
