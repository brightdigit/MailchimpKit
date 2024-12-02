import Foundation
import PrchModel

/** Information about a specific customer. */
public struct ECommerceCustomer3: Codable, Equatable, Content {
  /** The customer's email address. */
  public let emailAddress: String

  /** A unique identifier for the customer. Limited to 50 characters. */
  public let id: String

  /** The customer's opt-in status. This value will never overwrite the opt-in status of a pre-existing Mailchimp list member, but will apply to list members that are added through the e-commerce API endpoints. Customers who don't opt in to your Mailchimp list [will be added as `Transactional` members](https://mailchimp.com/developer/marketing/docs/e-commerce/#customers). */
  public let optInStatus: Bool

  public let address: Address?

  /** The customer's company. */
  public let company: String?

  /** The customer's first name. */
  public let firstName: String?

  /** The customer's last name. */
  public let lastName: String?

  public init(emailAddress: String, id: String, optInStatus: Bool, address: Address? = nil, company: String? = nil, firstName: String? = nil, lastName: String? = nil) {
    self.emailAddress = emailAddress
    self.id = id
    self.optInStatus = optInStatus
    self.address = address
    self.company = company
    self.firstName = firstName
    self.lastName = lastName
  }

  public enum CodingKeys: String, CodingKey {
    case emailAddress = "email_address"
    case id
    case optInStatus = "opt_in_status"
    case address
    case company
    case firstName = "first_name"
    case lastName = "last_name"
  }
}
