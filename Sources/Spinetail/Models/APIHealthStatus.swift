import Foundation
import PrchModel

/** API health status. */
public struct APIHealthStatus: Codable, Equatable, Content {
  /** This will return a constant string value if the request is successful. Ex. "Everything's Chimpy!" */
  public let healthStatus: String?

  public init(healthStatus: String? = nil) {
    self.healthStatus = healthStatus
  }

  public enum CodingKeys: String, CodingKey {
    case healthStatus = "health_status"
  }
}
