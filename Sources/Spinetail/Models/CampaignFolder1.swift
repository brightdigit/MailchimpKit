import Foundation
import PrchModel

/** A folder used to organize campaigns. */
public struct CampaignFolder1: Codable, Equatable, Content {
  /** Name to associate with the folder. */
  public let name: String

  public init(name: String) {
    self.name = name
  }

  public enum CodingKeys: String, CodingKey {
    case name
  }
}
