import Foundation

import PrchModel
/** Extra options for some merge field types. */
public struct MergeFieldOptionsModel: Codable, Equatable, Content {
  /** In a radio or dropdown non-group field, the available options for contacts to pick from. */
  public var choices: [String]?

  /** In a date or birthday field, the format of the date. */
  public var dateFormat: String?

  /** In an address field, the default country code if none supplied. */
  public var defaultCountry: Int?

  /** In a phone field, the phone number type: US or International. */
  public var phoneFormat: String?

  /** In a text field, the default length of the text field. */
  public var size: Int?

  public init(choices: [String]? = nil, dateFormat: String? = nil, defaultCountry: Int? = nil, phoneFormat: String? = nil, size: Int? = nil) {
    self.choices = choices
    self.dateFormat = dateFormat
    self.defaultCountry = defaultCountry
    self.phoneFormat = phoneFormat
    self.size = size
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case choices
    case dateFormat = "date_format"
    case defaultCountry = "default_country"
    case phoneFormat = "phone_format"
    case size
  }
}
