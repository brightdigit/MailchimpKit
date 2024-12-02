import Foundation
import PrchModel

/** A single survey response. */
public struct SurveyResponse: Codable, Equatable, Content {
  public let contact: Contact?

  /** If this contact was added to the Mailchimp audience via this survey. */
  public let isNewContact: Bool?

  /** The ID for the survey response. */
  public let responseId: String?

  /** The survey questions and the answers to those questions. */
  public let results: [Response]?

  /** The date and time when the survey response was submitted in ISO 8601 format. */
  public let submittedAt: MailchimpOptionalDate

  public init(contact: Contact? = nil, isNewContact: Bool? = nil, responseId: String? = nil, results: [Response]? = nil, submittedAt: MailchimpOptionalDate) {
    self.contact = contact
    self.isNewContact = isNewContact
    self.responseId = responseId
    self.results = results
    self.submittedAt = submittedAt
  }

  public enum CodingKeys: String, CodingKey {
    case contact
    case isNewContact = "is_new_contact"
    case responseId = "response_id"
    case results
    case submittedAt = "submitted_at"
  }
}
