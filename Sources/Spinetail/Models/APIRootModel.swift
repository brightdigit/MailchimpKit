import Foundation

import PrchModel
/** The API root resource links to all other resources available in the API. */
public struct APIRootModel: Codable, Equatable, Content {
  /** The type of pricing plan the account is on. */
  public enum AutomationsAutomationsPricingPlanType: String, Codable, Equatable, CaseIterable {
    case monthly
    case payAsYouGo = "pay_as_you_go"
    case foreverFree = "forever_free"
  }

  /** A list of link types and descriptions for the API schema documents. */
  public var links: [ResourceLinkModel]?

  /** The Mailchimp account ID. */
  public var accountId: String?

  /** The user-specified industry associated with the account. */
  public var accountIndustry: String?

  /** The name of the account. */
  public var accountName: String?

  /** The timezone currently set for the account. */
  public var accountTimezone: String?

  /** URL of the avatar for the user. */
  public var avatarURL: String?

  public var contact: AccountContactModel?

  /** The account email address. */
  public var email: String?

  /** The first name tied to the account. */
  public var firstName: String?

  /** Date of first payment for monthly plans. */
  public var firstPayment: DateTime?

  public var industryStats: IndustryStatsModel?

  /** The date and time of the last login for this account in ISO 8601 format. */
  public var lastLogin: DateTime?

  /** The last name tied to the account. */
  public var lastName: String?

  /** The ID associated with the user who owns this API key. If you can login to multiple accounts, this ID will be the same for each account. */
  public var loginId: String?

  /** The date and time that the account was created in ISO 8601 format. */
  public var memberSince: DateTime?

  /** The type of pricing plan the account is on. */
  public var pricingPlanType: PricingPlanType?

  /** Legacy - whether the account includes [Mailchimp Pro](https://mailchimp.com/help/about-mailchimp-pro/). */
  public var proEnabled: Bool?

  /** The [user role](https://mailchimp.com/help/manage-user-levels-in-your-account/) for the account. */
  public var role: String?

  /** The total number of subscribers across all lists in the account. */
  public var totalSubscribers: Int?

  /** The username tied to the account. */
  public var username: String?

  public init(links: [ResourceLinkModel]? = nil, accountId: String? = nil, accountIndustry: String? = nil, accountName: String? = nil, accountTimezone: String? = nil, avatarURL: String? = nil, contact: AccountContactModel? = nil, email: String? = nil, firstName: String? = nil, firstPayment: DateTime? = nil, industryStats: IndustryStatsModel? = nil, lastLogin: DateTime? = nil, lastName: String? = nil, loginId: String? = nil, memberSince: DateTime? = nil, pricingPlanType: PricingPlanType? = nil, proEnabled: Bool? = nil, role: String? = nil, totalSubscribers: Int? = nil, username: String? = nil) {
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

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
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
