import Foundation
import PrchModel

/** [A/B Testing](https://mailchimp.com/help/about-ab-testing-campaigns/) options for a campaign. */
public struct ABTestingOptions: Codable, Equatable, Content {
  /** How we should evaluate a winner. Based on 'opens', 'clicks', or 'manual'. */
  public enum PickWinner: String, Codable, Equatable, CaseIterable {
    case opens
    case clicks
    case manual
  }

  /** The type of AB split to run. */
  public enum SplitTest: String, Codable, Equatable, CaseIterable {
    case subject
    case fromName = "from_name"
    case schedule
  }

  /** How unit of time for measuring the winner ('hours' or 'days'). This cannot be changed after a campaign is sent. */
  public enum WaitUnits: String, Codable, Equatable, CaseIterable {
    case hours
    case days
  }

  /** For campaigns split on 'From Name', the name for Group A. */
  public let fromNamea: String?

  /** For campaigns split on 'From Name', the name for Group B. */
  public let fromNameb: String?

  /** How we should evaluate a winner. Based on 'opens', 'clicks', or 'manual'. */
  public let pickWinner: PickWinner?

  /** For campaigns split on 'From Name', the reply-to address for Group A. */
  public let replyEmaila: String?

  /** For campaigns split on 'From Name', the reply-to address for Group B. */
  public let replyEmailb: String?

  /** The send time for Group A. */
  public let sendTimea: MailchimpOptionalDate

  /** The send time for Group B. */
  public let sendTimeb: MailchimpOptionalDate

  /** The send time for the winning version. */
  public let sendTimeWinner: String?

  /** The size of the split groups. CampaignsModel split based on 'schedule' are forced to have a 50/50 split. Valid split integers are between 1-50. */
  public let splitSize: Int?

  /** The type of AB split to run. */
  public let splitTest: SplitTest?

  /** For campaigns split on 'Subject Line', the subject line for Group A. */
  public let subjecta: String?

  /** For campaigns split on 'Subject Line', the subject line for Group B. */
  public let subjectb: String?

  /** The amount of time to wait before picking a winner. This cannot be changed after a campaign is sent. */
  public let waitTime: Int?

  /** How unit of time for measuring the winner ('hours' or 'days'). This cannot be changed after a campaign is sent. */
  public let waitUnits: WaitUnits?

  public init(fromNamea: String? = nil, fromNameb: String? = nil, pickWinner: PickWinner? = nil, replyEmaila: String? = nil, replyEmailb: String? = nil, sendTimea: MailchimpOptionalDate, sendTimeb: MailchimpOptionalDate, sendTimeWinner: String? = nil, splitSize: Int? = nil, splitTest: SplitTest? = nil, subjecta: String? = nil, subjectb: String? = nil, waitTime: Int? = nil, waitUnits: WaitUnits? = nil) {
    self.fromNamea = fromNamea
    self.fromNameb = fromNameb
    self.pickWinner = pickWinner
    self.replyEmaila = replyEmaila
    self.replyEmailb = replyEmailb
    self.sendTimea = sendTimea
    self.sendTimeb = sendTimeb
    self.sendTimeWinner = sendTimeWinner
    self.splitSize = splitSize
    self.splitTest = splitTest
    self.subjecta = subjecta
    self.subjectb = subjectb
    self.waitTime = waitTime
    self.waitUnits = waitUnits
  }

  public enum CodingKeys: String, CodingKey {
    case fromNamea = "from_name_a"
    case fromNameb = "from_name_b"
    case pickWinner = "pick_winner"
    case replyEmaila = "reply_email_a"
    case replyEmailb = "reply_email_b"
    case sendTimea = "send_time_a"
    case sendTimeb = "send_time_b"
    case sendTimeWinner = "send_time_winner"
    case splitSize = "split_size"
    case splitTest = "split_test"
    case subjecta = "subject_a"
    case subjectb = "subject_b"
    case waitTime = "wait_time"
    case waitUnits = "wait_units"
  }
}
