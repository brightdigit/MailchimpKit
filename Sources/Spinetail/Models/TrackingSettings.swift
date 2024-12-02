import Foundation
import PrchModel

/** The tracking settings applied to this landing page. */
public struct TrackingSettings: Codable, Equatable, Content {
  /** Google offers restricted data processing in connection with the California Consumer Privacy Act (CCPA) to restrict how Google uses certain identifiers and other data processed in the provision of its services. You can learn more about Google's restricted data processing within Google Ads [here](https://privacy.google.com/businesses/rdp/). */
  public let enableRestrictedDataProcessing: Bool?

  /** Use cookies to track unique visitors and calculate overall conversion rate. Learn more [here](https://mailchimp.com/help/use-track-mailchimp/). */
  public let trackWithMailchimp: Bool?

  public init(enableRestrictedDataProcessing: Bool? = nil, trackWithMailchimp: Bool? = nil) {
    self.enableRestrictedDataProcessing = enableRestrictedDataProcessing
    self.trackWithMailchimp = trackWithMailchimp
  }

  public enum CodingKeys: String, CodingKey {
    case enableRestrictedDataProcessing = "enable_restricted_data_processing"
    case trackWithMailchimp = "track_with_mailchimp"
  }
}
