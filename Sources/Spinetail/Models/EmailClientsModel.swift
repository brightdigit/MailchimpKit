import Foundation

import PrchModel
/** The top email clients based on user-agent strings. */
public struct EmailClientsModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** An array of top email clients. */
  public var clients: [EmailClientModel]?

  /** The list id. */
  public var listId: String?

  /** The total number of items matching the query regardless of pagination. */
  public var totalItems: Int?

  public init(links: [ResourceLinkModel]? = nil, clients: [EmailClientModel]? = nil, listId: String? = nil, totalItems: Int? = nil) {
    self.links = links
    self.clients = clients
    self.listId = listId
    self.totalItems = totalItems
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case clients
    case listId = "list_id"
    case totalItems = "total_items"
  }
}
