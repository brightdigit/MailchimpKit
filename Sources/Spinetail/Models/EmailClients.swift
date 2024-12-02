import Foundation
import PrchModel

/** The top email clients based on user-agent strings. */
public struct EmailClients: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** An array of top email clients. */
  public let clients: [EmailClient]?

  /** The list id. */
  public let listId: String?

  /** The total number of items matching the query regardless of pagination. */
  public let totalItems: Int?

  public init(links: [ResourceLink]? = nil, clients: [EmailClient]? = nil, listId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.clients = clients
    self.listId = listId
    self.totalItems = totalItems
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case clients
    case listId = "list_id"
    case totalItems = "total_items"
  }
}
