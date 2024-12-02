import Foundation
import PrchModel

public extension Lists {
  /**
   Add member to segment

   Add a member to a static segment.
   */
  struct PostListsIdSegmentsIdMembers: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/segments/{segment_id}/members"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "segment_id" + "}", with: "\(segmentId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The unique id for the segment. */
    public let segmentId: String

    public init(body: PostListsIdSegmentsIdMembersRequest, listId: String, segmentId: String) {
      self.body = body
      self.listId = listId
      self.segmentId = segmentId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = ListMembers1
    public typealias BodyType = PostListsIdSegmentsIdMembersRequest

    public let body: PostListsIdSegmentsIdMembersRequest
  }
}
