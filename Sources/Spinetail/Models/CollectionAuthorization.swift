import Foundation
import PrchModel

/** Do particular authorization constraints around this collection limit creation of new instances? */
public struct CollectionAuthorization: Codable, Equatable, Content {
  /** How many total instances of this resource are allowed? This is independent of any filter conditions applied to the query. As a special case, -1 indicates unlimited. */
  public let maxInstances: Int

  /** May the user create additional instances of this resource? */
  public let mayCreate: Bool

  /** How many total instances of this resource are already in use? This is independent of any filter conditions applied to the query. Value may be larger than max_instances. As a special case, -1 is returned when access is unlimited. */
  public let currentTotalInstances: Int?

  public init(maxInstances: Int, mayCreate: Bool, currentTotalInstances: Int? = nil) {
    self.maxInstances = maxInstances
    self.mayCreate = mayCreate
    self.currentTotalInstances = currentTotalInstances
  }

  public enum CodingKeys: String, CodingKey {
    case maxInstances = "max_instances"
    case mayCreate = "may_create"
    case currentTotalInstances = "current_total_instances"
  }
}
