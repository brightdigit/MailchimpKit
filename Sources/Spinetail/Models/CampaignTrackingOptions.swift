import Foundation
import PrchModel

/** The tracking options for a campaign. */
public struct CampaignTrackingOptions: Codable, Equatable, Content {
  public let capsule: CapsuleCRMTracking1?

  /** The custom slug for [Click Tale](https://mailchimp.com/help/additional-tracking-options-for-campaigns/) tracking (max of 50 bytes). */
  public let clicktale: String?

  /** Whether to enable e-commerce tracking. */
  public let ecomm360: Bool?

  /** Deprecated */
  public let goalTracking: Bool?

  /** The custom slug for [Google Analytics](https://mailchimp.com/help/integrate-google-analytics-with-mailchimp/) tracking (max of 50 bytes). */
  public let googleAnalytics: String?

  /** Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the HTML version of the campaign. Defaults to `true`. */
  public let htmlClicks: Bool?

  /** Whether to [track opens](https://mailchimp.com/help/about-open-tracking/). Defaults to `true`. */
  public let opens: Bool?

  public let salesforce: SalesforceCRMTracking?

  /** Whether to [track clicks](https://mailchimp.com/help/enable-and-view-click-tracking/) in the plain-text version of the campaign. Defaults to `true`. */
  public let textClicks: Bool?

  public init(capsule: CapsuleCRMTracking1? = nil, clicktale: String? = nil, ecomm360: Bool? = nil, goalTracking: Bool? = nil, googleAnalytics: String? = nil, htmlClicks: Bool? = nil, opens: Bool? = nil, salesforce: SalesforceCRMTracking? = nil, textClicks: Bool? = nil) {
    self.capsule = capsule
    self.clicktale = clicktale
    self.ecomm360 = ecomm360
    self.goalTracking = goalTracking
    self.googleAnalytics = googleAnalytics
    self.htmlClicks = htmlClicks
    self.opens = opens
    self.salesforce = salesforce
    self.textClicks = textClicks
  }

  public enum CodingKeys: String, CodingKey {
    case capsule
    case clicktale
    case ecomm360
    case goalTracking = "goal_tracking"
    case googleAnalytics = "google_analytics"
    case htmlClicks = "html_clicks"
    case opens
    case salesforce
    case textClicks = "text_clicks"
  }
}
