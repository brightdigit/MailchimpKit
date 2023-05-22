import Foundation

import PrchModel
/** Information about the contact. */
public struct ContactModel: Codable, Equatable, Content {
  /** The contact's current status. */
  public enum AutomationsAutomationsStatus: String, Codable, Equatable, CaseIterable {
    case subscribed = "Subscribed"
    case unsubscribed = "Unsubscribed"
    case nonSubscribed = "Non-Subscribed"
    case cleaned = "Cleaned"
    case archived = "Archived"
  }

  /** URL for the contact's avatar or profile image. */
  public var avatarURL: String?

  /** Indicates whether a contact consents to 1:1 messaging. */
  public var consentsToOneToOneMessaging: Bool?

  /** The ID of this contact. */
  public var contactId: String?

  /** The contact's email address. */
  public var email: String?

  /** The MD5 hash of the lowercase version of the list member's email address. */
  public var emailId: String?

  /** The contact's full name. */
  public var fullName: String?

  /** The contact's current status. */
  public var status: Status?

  public init(avatarURL: String? = nil, consentsToOneToOneMessaging: Bool? = nil, contactId: String? = nil, email: String? = nil, emailId: String? = nil, fullName: String? = nil, status: Status? = nil) {
    self.avatarURL = avatarURL
    self.consentsToOneToOneMessaging = consentsToOneToOneMessaging
    self.contactId = contactId
    self.email = email
    self.emailId = emailId
    self.fullName = fullName
    self.status = status
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case avatarURL = "avatar_url"
    case consentsToOneToOneMessaging = "consents_to_one_to_one_messaging"
    case contactId = "contact_id"
    case email
    case emailId = "email_id"
    case fullName = "full_name"
    case status
  }
}
