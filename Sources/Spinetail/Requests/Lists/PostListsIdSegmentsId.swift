import Foundation
import PrchModel

public extension AutomationsAutomationsLists {
  /**
   Batch add or remove members

   Batch add/remove list members to static segment
   */
  struct PostListsIdSegmentsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/segments/{segment_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "segment_id" + "}", with: "\(segmentId)")
    }

    public var method: RequestMethod {
      .POST
    }

    /** The unique ID for the list. */
    public var listId: String

    /** The unique id for the segment. */
    public var segmentId: String

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    // public static let service = APIService<Response>(id: "postListsIdSegmentsId", tag: "lists", method: "POST", path: "/lists/{list_id}/segments/{segment_id}", hasBody: true, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = BatchAddRemoveListMembersToFromStaticSegmentModel
    public typealias BodyType = MembersToAddRemoveToFromaStaticSegmentModel

    public let body: MembersToAddRemoveToFromaStaticSegmentModel
  }
}
