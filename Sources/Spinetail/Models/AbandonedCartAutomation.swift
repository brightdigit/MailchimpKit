import Foundation
import PrchModel

/** abandonedCart automation details. */
public struct AbandonedCartAutomation: Codable, Equatable, Content {
  /** Status of the abandonedCart automation. */
  public enum Status: String, Codable, Equatable, CaseIterable {
    case save
    case sending
    case paused
  }

  /** Unique ID of automation parent campaign. */
  public let id: String?

  /** Whether this store supports the abandonedCart automation. */
  public let isSupported: Bool?

  /** Status of the abandonedCart automation. */
  public let status: Status?

  public init(id: String? = nil, isSupported: Bool? = nil, status: Status? = nil) {
    self.id = id
    self.isSupported = isSupported
    self.status = status
  }

  public enum CodingKeys: String, CodingKey {
    case id
    case isSupported = "is_supported"
    case status
  }
}
