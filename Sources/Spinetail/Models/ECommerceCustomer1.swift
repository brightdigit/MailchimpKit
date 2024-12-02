import Foundation
import PrchModel

/** Information about a specific customer. For existing customers include only the `id` parameter in the `customer` object body. */
public struct ECommerceCustomer1: Codable, Equatable, Content {
  /** A unique identifier for the customer. Limited to 50 characters. */
  public let id: String

  public let address: Address?

  /** The customer's company. */
  public let company: String?

  /** The customer's email address. */
  public let emailAddress: String?

  /** The customer's first name. */
  public let firstName: String?

  /** The customer's last name. */
  public let lastName: String?

  /** The customer's opt-in status. This value will never overwrite the opt-in status of a pre-existing Mailchimp list member, but will apply to list members that are added through the e-commerce API endpoints. Customers who don't opt in to your Mailchimp list [will be added as `Transactional` members](https://mailchimp.com/developer/marketing/docs/e-commerce/#customers). */
  public let optInStatus: Bool?

  public init(id: String, address: Address? = nil, company: String? = nil, emailAddress: String? = nil, firstName: String? = nil, lastName: String? = nil, optInStatus: Bool? = nil) {
    self.id = id
    self.address = address
    self.company = company
    self.emailAddress = emailAddress
    self.firstName = firstName
    self.lastName = lastName
    self.optInStatus = optInStatus
  }

  public enum CodingKeys: String, CodingKey {
    case id
    case address
    case company
    case emailAddress = "email_address"
    case firstName = "first_name"
    case lastName = "last_name"
    case optInStatus = "opt_in_status"
  }
}
