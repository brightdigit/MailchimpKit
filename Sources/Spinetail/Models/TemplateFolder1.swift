import Foundation
import PrchModel

/** A folder used to organize templates. */
public struct TemplateFolder1: Codable, Equatable, Content {
  /** The name of the folder. */
  public let name: String

  public init(name: String) {
    self.name = name
  }

  public enum CodingKeys: String, CodingKey {
    case name
  }
}
