import Foundation
import PrchModel

/** The API root resource links to all other resources available in the API. */
public struct APIRoot: Codable, Equatable, Content {
  /** The type of pricing plan the account is on. */
  public enum PricingPlanType: String, Codable, Equatable, CaseIterable {
    case monthly
    case payAsYouGo = "pay_as_you_go"
    case foreverFree = "forever_free"
  }

  /** A list of link types and descriptions for the API schema documents. */
  public let links: [ResourceLink]?

  /** The Mailchimp account ID. */
  public let accountId: String?

  /** The user-specified industry associated with the account. */
  public let accountIndustry: String?

  /** The name of the account. */
  public let accountName: String?

  /** The timezone currently set for the account. */
  public let accountTimezone: String?

  /** URL of the avatar for the user. */
  public let avatarURL: String?

  public let contact: AccountContact?

  /** The account email address. */
  public let email: String?

  /** The first name tied to the account. */
  public let firstName: String?

  /** Date of first payment for monthly plans. */
  public let firstPayment: MailchimpOptionalDate

  public let industryStats: IndustryStats?

  /** The date and time of the last login for this account in ISO 8601 format. */
  public let lastLogin: MailchimpOptionalDate

  /** The last name tied to the account. */
  public let lastName: String?

  /** The ID associated with the user who owns this API key. If you can login to multiple accounts, this ID will be the same for each account. */
  public let loginId: String?

  /** The date and time that the account was created in ISO 8601 format. */
  public let memberSince: MailchimpOptionalDate

  /** The type of pricing plan the account is on. */
  public let pricingPlanType: PricingPlanType?

  /** Legacy - whether the account includes [Mailchimp Pro](https://mailchimp.com/help/about-mailchimp-pro/). */
  public let proEnabled: Bool?

  /** The [user role](https://mailchimp.com/help/manage-user-levels-in-your-account/) for the account. */
  public let role: String?

  /** The total number of subscribers across all lists in the account. */
  public let totalSubscribers: Int?

  /** The username tied to the account. */
  public let username: String?

  public init(links: [ResourceLink]? = nil, accountId: String? = nil, accountIndustry: String? = nil, accountName: String? = nil, accountTimezone: String? = nil, avatarURL: String? = nil, contact: AccountContact? = nil, email: String? = nil, firstName: String? = nil, firstPayment: MailchimpOptionalDate, industryStats: IndustryStats? = nil, lastLogin: MailchimpOptionalDate, lastName: String? = nil, loginId: String? = nil, memberSince: MailchimpOptionalDate, pricingPlanType: PricingPlanType? = nil, proEnabled: Bool? = nil, role: String? = nil, totalSubscribers: Int? = nil, username: String? = nil) {
    self.links = links
    self.accountId = accountId
    self.accountIndustry = accountIndustry
    self.accountName = accountName
    self.accountTimezone = accountTimezone
    self.avatarURL = avatarURL
    self.contact = contact
    self.email = email
    self.firstName = firstName
    self.firstPayment = firstPayment
    self.industryStats = industryStats
    self.lastLogin = lastLogin
    self.lastName = lastName
    self.loginId = loginId
    self.memberSince = memberSince
    self.pricingPlanType = pricingPlanType
    self.proEnabled = proEnabled
    self.role = role
    self.totalSubscribers = totalSubscribers
    self.username = username
  }

  public enum CodingKeys: String, CodingKey {
    case links = "_links"
    case accountId = "account_id"
    case accountIndustry = "account_industry"
    case accountName = "account_name"
    case accountTimezone = "account_timezone"
    case avatarURL = "avatar_url"
    case contact
    case email
    case firstName = "first_name"
    case firstPayment = "first_payment"
    case industryStats = "industry_stats"
    case lastLogin = "last_login"
    case lastName = "last_name"
    case loginId = "login_id"
    case memberSince = "member_since"
    case pricingPlanType = "pricing_plan_type"
    case proEnabled = "pro_enabled"
    case role
    case totalSubscribers = "total_subscribers"
    case username
  }
}
