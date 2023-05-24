import Foundation

import PrchModel
/** The settings specific to A/B test campaigns. */
public struct ABTestOptionsModel: Codable, Equatable, Content {
  /** The combination that performs the best. This may be determined automatically by click rate, open rate, or total revenue -- or you may choose manually based on the reporting data you find the most valuable. For Multivariate Campaigns testing send_time, winner_criteria is ignored. For Multivariate Campaigns with 'manual' as the winner_criteria, the winner must be chosen in the Mailchimp web application. */
  public enum AutomationsAutomationsWinnerCriteria: String, Codable, Equatable, CaseIterable {
    case opens
    case clicks
    case manual
    case totalRevenue = "total_revenue"
  }

  /** Combinations of possible variables used to build emails. */
  public var combinations: [CombinationsInnerModel]?

  /** Descriptions of possible email contents. To set campaign contents, make a PUT request to /campaigns/{campaign_id}/content with the field 'variate_contents'. */
  public var contents: [String]?

  /** The possible from names. The number of from_names provided must match the number of reply_to_addresses. If no from_names are provided, settings.from_name will be used. */
  public var fromNames: [String]?

  /** The possible reply-to addresses. The number of reply_to_addresses provided must match the number of from_names. If no reply_to_addresses are provided, settings.reply_to will be used. */
  public var replyToAddresses: [String]?

  /** The possible send times to test. The times provided should be in the format YYYY-MM-DD HH:MM:SS. If send_times are provided to test, the test_size will be set to 100% and winner_criteria will be ignored. */
  public var sendTimes: [DateTime]?

  /** The possible subject lines to test. If no subject lines are provided, settings.subject_line will be used. */
  public var subjectLines: [String]?

  /** The percentage of recipients to send the test combinations to, must be a value between 10 and 100. */
  public var testSize: Int?

  /** The number of minutes to wait before choosing the winning campaign. The value of wait_time must be greater than 0 and in whole hours, specified in minutes. */
  public var waitTime: Int?

  /** The combination that performs the best. This may be determined automatically by click rate, open rate, or total revenue -- or you may choose manually based on the reporting data you find the most valuable. For Multivariate Campaigns testing send_time, winner_criteria is ignored. For Multivariate Campaigns with 'manual' as the winner_criteria, the winner must be chosen in the Mailchimp web application. */
  public var winnerCriteria: WinnerCriteria?

  /** ID of the campaign that was sent to the remaining recipients based on the winning combination. */
  public var winningCampaignId: String?

  /** ID for the winning combination. */
  public var winningCombinationId: String?

  public init(combinations: [CombinationsInnerModel]? = nil, contents: [String]? = nil, fromNames: [String]? = nil, replyToAddresses: [String]? = nil, sendTimes: [DateTime]? = nil, subjectLines: [String]? = nil, testSize: Int? = nil, waitTime: Int? = nil, winnerCriteria: WinnerCriteria? = nil, winningCampaignId: String? = nil, winningCombinationId: String? = nil) {
    self.combinations = combinations
    self.contents = contents
    self.fromNames = fromNames
    self.replyToAddresses = replyToAddresses
    self.sendTimes = sendTimes
    self.subjectLines = subjectLines
    self.testSize = testSize
    self.waitTime = waitTime
    self.winnerCriteria = winnerCriteria
    self.winningCampaignId = winningCampaignId
    self.winningCombinationId = winningCombinationId
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case combinations
    case contents
    case fromNames = "from_names"
    case replyToAddresses = "reply_to_addresses"
    case sendTimes = "send_times"
    case subjectLines = "subject_lines"
    case testSize = "test_size"
    case waitTime = "wait_time"
    case winnerCriteria = "winner_criteria"
    case winningCampaignId = "winning_campaign_id"
    case winningCombinationId = "winning_combination_id"
  }
}
