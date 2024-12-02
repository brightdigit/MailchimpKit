import Foundation
import PrchModel

/** The settings specific to A/B test campaigns. */
public struct ABTestOptions2: Codable, Equatable, Content {
  /** The combination that performs the best. This may be determined automatically by click rate, open rate, or total revenue -- or you may choose manually based on the reporting data you find the most valuable. For Multivariate CampaignsModel testing send_time, winner_criteria is ignored. For Multivariate CampaignsModel with 'manual' as the winner_criteria, the winner must be chosen in the Mailchimp web application. */
  public enum WinnerCriteria: String, Codable, Equatable, CaseIterable {
    case opens
    case clicks
    case manual
    case totalRevenue = "total_revenue"
  }

  /** The combination that performs the best. This may be determined automatically by click rate, open rate, or total revenue -- or you may choose manually based on the reporting data you find the most valuable. For Multivariate CampaignsModel testing send_time, winner_criteria is ignored. For Multivariate CampaignsModel with 'manual' as the winner_criteria, the winner must be chosen in the Mailchimp web application. */
  public let winnerCriteria: WinnerCriteria

  /** Combinations of possible variables used to build emails. */
  public let combinations: [CombinationsInner]?

  /** Descriptions of possible email contents. To set campaign contents, make a PUT request to /campaigns/{campaign_id}/content with the field 'variate_contents'. */
  public let contents: [String]?

  /** The possible from names. The number of from_names provided must match the number of reply_to_addresses. If no from_names are provided, settings.from_name will be used. */
  public let fromNames: [String]?

  /** The possible reply-to addresses. The number of reply_to_addresses provided must match the number of from_names. If no reply_to_addresses are provided, settings.reply_to will be used. */
  public let replyToAddresses: [String]?

  /** The possible send times to test. The times provided should be in the format YYYY-MM-DD HH:MM:SS. If send_times are provided to test, the test_size will be set to 100% and winner_criteria will be ignored. */
  public let sendTimes: [DateTime]?

  /** The possible subject lines to test. If no subject lines are provided, settings.subject_line will be used. */
  public let subjectLines: [String]?

  /** The percentage of recipients to send the test combinations to, must be a value between 10 and 100. */
  public let testSize: Int?

  /** The number of minutes to wait before choosing the winning campaign. The value of wait_time must be greater than 0 and in whole hours, specified in minutes. */
  public let waitTime: Int?

  /** ID of the campaign that was sent to the remaining recipients based on the winning combination. */
  public let winningCampaignId: String?

  /** ID for the winning combination. */
  public let winningCombinationId: String?

  public init(winnerCriteria: WinnerCriteria, combinations: [CombinationsInner]? = nil, contents: [String]? = nil, fromNames: [String]? = nil, replyToAddresses: [String]? = nil, sendTimes: [DateTime]? = nil, subjectLines: [String]? = nil, testSize: Int? = nil, waitTime: Int? = nil, winningCampaignId: String? = nil, winningCombinationId: String? = nil) {
    self.winnerCriteria = winnerCriteria
    self.combinations = combinations
    self.contents = contents
    self.fromNames = fromNames
    self.replyToAddresses = replyToAddresses
    self.sendTimes = sendTimes
    self.subjectLines = subjectLines
    self.testSize = testSize
    self.waitTime = waitTime
    self.winningCampaignId = winningCampaignId
    self.winningCombinationId = winningCombinationId
  }

  public enum CodingKeys: String, CodingKey {
    case winnerCriteria = "winner_criteria"
    case combinations
    case contents
    case fromNames = "from_names"
    case replyToAddresses = "reply_to_addresses"
    case sendTimes = "send_times"
    case subjectLines = "subject_lines"
    case testSize = "test_size"
    case waitTime = "wait_time"
    case winningCampaignId = "winning_campaign_id"
    case winningCombinationId = "winning_combination_id"
  }
}
