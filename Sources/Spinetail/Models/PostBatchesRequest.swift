import Foundation
import PrchModel

public struct PostBatchesRequest: Codable, Equatable, Content {
  /** An array of objects that describes operations to perform. */
  public let operations: [Operations]

  public init(operations: [Operations]) {
    self.operations = operations
  }

  public enum CodingKeys: String, CodingKey {
    case operations
  }
}
