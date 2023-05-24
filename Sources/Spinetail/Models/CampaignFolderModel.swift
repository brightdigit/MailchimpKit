import Foundation

import PrchModel
/** A folder used to organize campaigns. */
public struct CampaignFolderModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The number of campaigns in the folder. */
  public var count: Int?

  /** A string that uniquely identifies this campaign folder. */
  public var id: String?

  /** The name of the folder. */
  public var name: String?

  public init(links: [ResourceLinkModel]? = nil, count: Int? = nil, id: String? = nil, name: String? = nil) {
    self.links = links
    self.count = count
    self.id = id
    self.name = name
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case count
    case id
    case name
  }
}
