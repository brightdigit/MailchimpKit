import Foundation
import PrchModel

/** Extra options for some merge field types. */
public struct MergeFieldOptions2: Codable, Equatable, Content {
  /** In a radio or dropdown non-group field, the available options for members to pick from. */
  public let choices: [String]?

  /** In a date or birthday field, the format of the date. */
  public let dateFormat: String?

  /** In an address field, the default country code if none supplied. */
  public let defaultCountry: Int?

  /** In a phone field, the phone number type: US or International. */
  public let phoneFormat: String?

  public init(choices: [String]? = nil, dateFormat: String? = nil, defaultCountry: Int? = nil, phoneFormat: String? = nil) {
    self.choices = choices
    self.dateFormat = dateFormat
    self.defaultCountry = defaultCountry
    self.phoneFormat = phoneFormat
  }

  public enum CodingKeys: String, CodingKey {
    case choices
    case dateFormat = "date_format"
    case defaultCountry = "default_country"
    case phoneFormat = "phone_format"
  }
}
