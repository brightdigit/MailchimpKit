import Foundation
import PrchModel

public extension Lists {
  /**
   Remove list member from segment

   Remove a member from the specified static segment.
   */
  struct DeleteListsIdSegmentsIdMembersId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/segments/{segment_id}/members/{subscriber_hash}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "segment_id" + "}", with: "\(segmentId)").replacingOccurrences(of: "{" + "subscriber_hash" + "}", with: "\(subscriberHash)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The unique id for the segment. */
    public let segmentId: String

    /** The MD5 hash of the lowercase version of the list member's email address. */
    public let subscriberHash: String

    public init(listId: String, segmentId: String, subscriberHash: String) {
      self.listId = listId
      self.segmentId = segmentId
      self.subscriberHash = subscriberHash
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
