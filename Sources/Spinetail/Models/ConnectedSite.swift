import Foundation
import PrchModel

/** Information about a specific connected site. */
public struct ConnectedSite: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The date and time the connected site was created in ISO 8601 format. */
  public let createdAt: MailchimpOptionalDate

  /** The connected site domain. */
  public let domain: String?

  /** The unique identifier for the site. */
  public let foreignId: String?

  /** The platform of the connected site. */
  public let platform: String?

  public let siteScript: Script?

  /** The unique identifier for the ecommerce store that's associated with the connected site (if any). The store_id for a specific connected site can't change. */
  public let storeId: String?

  /** The date and time the connected site was last updated in ISO 8601 format. */
  public let updatedAt: MailchimpOptionalDate

  public init(links: [ResourceLink]? = nil, createdAt: MailchimpOptionalDate, domain: String? = nil, foreignId: String? = nil, platform: String? = nil, siteScript: Script? = nil, storeId: String? = nil, updatedAt: MailchimpOptionalDate) {
    self.links = links
    self.createdAt = createdAt
    self.domain = domain
    self.foreignId = foreignId
    self.platform = platform
    self.siteScript = siteScript
    self.storeId = storeId
    self.updatedAt = updatedAt
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case createdAt = "created_at"
    case domain
    case foreignId = "foreign_id"
    case platform
    case siteScript = "site_script"
    case storeId = "store_id"
    case updatedAt = "updated_at"
  }
}
