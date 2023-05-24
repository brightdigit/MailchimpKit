import Foundation

import PrchModel
/** Information about a specific customer. Orders for existing customers should include only the `id` parameter in the `customer` object body. */
public struct ECommerceCustomer2Model: Codable, Equatable, Content {
  public var address: AddressModel?

  /** The customer's company. */
  public var company: String?

  /** The customer's first name. */
  public var firstName: String?

  /** The customer's last name. */
  public var lastName: String?

  /** The customer's opt-in status. This value will never overwrite the opt-in status of a pre-existing Mailchimp list member, but will apply to list members that are added through the e-commerce API endpoints. Customers who don't opt in to your Mailchimp list [will be added as `Transactional` members](https://mailchimp.com/developer/marketing/docs/e-commerce/#customers). */
  public var optInStatus: Bool?

  public init(address: AddressModel? = nil, company: String? = nil, firstName: String? = nil, lastName: String? = nil, optInStatus: Bool? = nil) {
    self.address = address
    self.company = company
    self.firstName = firstName
    self.lastName = lastName
    self.optInStatus = optInStatus
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case address
    case company
    case firstName = "first_name"
    case lastName = "last_name"
    case optInStatus = "opt_in_status"
  }
}
