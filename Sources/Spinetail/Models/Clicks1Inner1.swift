import Foundation
import PrchModel

public struct Clicks1Inner1: Codable, Equatable, Content {
  public let date: String?

  public let val: Int?

  public init(date: String? = nil, val: Int? = nil) {
    self.date = date
    self.val = val
  }

  public enum CodingKeys: String, CodingKey {
    case date
    case val
  }
}
