import Foundation
import PrchModel

/** An object representing all segmentation options. */
public struct SegmentOptions: Codable, Equatable, Content {
  /** Segment match type. */
  public enum Match: String, Codable, Equatable, CaseIterable {
    case any
    case all
  }

  /** Segment match conditions. There are multiple possible types, see the [condition types documentation](https://mailchimp.com/developer/marketing/docs/alternative-schemas/#segment-condition-schemas). */
  public let conditions: [[String: String]]?

  /** Segment match type. */
  public let match: Match?

  /** The id for an existing saved segment. */
  public let savedSegmentId: Int?

  public init(conditions: [[String: String]]? = nil, match: Match? = nil, savedSegmentId: Int? = nil) {
    self.conditions = conditions
    self.match = match
    self.savedSegmentId = savedSegmentId
  }

  public enum CodingKeys: String, CodingKey {
    case conditions
    case match
    case savedSegmentId = "saved_segment_id"
  }
}
