import Foundation
import PrchModel

/** The details of a survey question's answer. */
public struct SurveyQuestionAnswer: Codable, Equatable, Content {
  public let contact: Contact?

  /** The ID of the answer. */
  public let id: String?

  /** If this contact was added to the Mailchimp audience via this survey. */
  public let isNewContact: Bool?

  /** The ID of the survey response. */
  public let responseId: String?

  /** The date and time when the survey response was submitted in ISO 8601 format. */
  public let submittedAt: MailchimpOptionalDate

  /** The raw text answer. */
  public let value: String?

  public init(contact: Contact? = nil, id: String? = nil, isNewContact: Bool? = nil, responseId: String? = nil, submittedAt: MailchimpOptionalDate, value: String? = nil) {
    self.contact = contact
    self.id = id
    self.isNewContact = isNewContact
    self.responseId = responseId
    self.submittedAt = submittedAt
    self.value = value
  }

  public enum CodingKeys: String, CodingKey {
    case contact
    case id
    case isNewContact = "is_new_contact"
    case responseId = "response_id"
    case submittedAt = "submitted_at"
    case value
  }
}
