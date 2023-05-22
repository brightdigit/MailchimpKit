import Foundation

import PrchModel
/** Information about a specific customer. */
public struct ECommerceCustomerModel: Codable, Equatable, Content {
  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  public var address: AddressModel?

  /** The customer's company. */
  public var company: String?

  /** The date and time the customer was created in ISO 8601 format. */
  public var createdAt: DateTime?

  /** The customer's email address. */
  public var emailAddress: String?

  /** The customer's first name. */
  public var firstName: String?

  /** A unique identifier for the customer. */
  public var id: String?

  /** The customer's last name. */
  public var lastName: String?

  /** The customer's opt-in status. This value will never overwrite the opt-in status of a pre-existing Mailchimp list member, but will apply to list members that are added through the e-commerce API endpoints. Customers who don't opt in to your Mailchimp list [will be added as `Transactional` members](https://mailchimp.com/developer/marketing/docs/e-commerce/#customers). */
  public var optInStatus: Bool?

  /** The customer's total order count. */
  public var ordersCount: Int?

  /** The total amount the customer has spent. */
  public var totalSpent: Double?

  /** The date and time the customer was last updated in ISO 8601 format. */
  public var updatedAt: DateTime?

  public init(links: [ResourceLinkModel]? = nil, address: AddressModel? = nil, company: String? = nil, createdAt: DateTime? = nil, emailAddress: String? = nil, firstName: String? = nil, id: String? = nil, lastName: String? = nil, optInStatus: Bool? = nil, ordersCount: Int? = nil, totalSpent: Double? = nil, updatedAt: DateTime? = nil) {
    self.links = links
    self.address = address
    self.company = company
    self.createdAt = createdAt
    self.emailAddress = emailAddress
    self.firstName = firstName
    self.id = id
    self.lastName = lastName
    self.optInStatus = optInStatus
    self.ordersCount = ordersCount
    self.totalSpent = totalSpent
    self.updatedAt = updatedAt
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case links = "_links"
    case address
    case company
    case createdAt = "created_at"
    case emailAddress = "email_address"
    case firstName = "first_name"
    case id
    case lastName = "last_name"
    case optInStatus = "opt_in_status"
    case ordersCount = "orders_count"
    case totalSpent = "total_spent"
    case updatedAt = "updated_at"
  }
}
