import Foundation
import PrchModel

public struct PostCampaignsIdActionsTestRequest: Codable, Equatable, Content {
  /** Choose the type of test email to send. */
  public enum SendType: String, Codable, Equatable, CaseIterable {
    case html
    case plaintext
  }

  /** Choose the type of test email to send. */
  public let sendType: SendType

  /** An array of email addresses to send the test email to. */
  public let testEmails: [String]

  public init(sendType: SendType, testEmails: [String]) {
    self.sendType = sendType
    self.testEmails = testEmails
  }

  public enum CodingKeys: String, CodingKey {
    case sendType = "send_type"
    case testEmails = "test_emails"
  }
}
