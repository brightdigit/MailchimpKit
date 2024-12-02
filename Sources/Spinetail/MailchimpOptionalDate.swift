import Foundation

public struct MailchimpOptionalDate: Codable, Equatable, ExpressibleByNilLiteral {
  public init(nilLiteral _: ()) {
    self.init()
  }

  public init(value: Date? = nil) {
    self.value = value
  }

  public let value: Date?

  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    let string = try container.decode(String.self)
    if string == "" {
      value = nil
    } else {
      value = try container.decode(Date.self)
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    if let value = value {
      try container.encode(value)
    } else {
      try container.encode("")
    }
  }
}
