import Foundation
import PrchModel

public extension Lists {
  /**
   Update segment

   Update a specific segment in a list.
   */
  struct PatchListsIdSegmentsId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/segments/{segment_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)").replacingOccurrences(of: "{" + "segment_id" + "}", with: "\(segmentId)")
    }

    public var method: RequestMethod {
      .PATCH
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The unique id for the segment. */
    public let segmentId: String

    public init(body: List9, listId: String, segmentId: String) {
      self.body = body
      self.listId = listId
      self.segmentId = segmentId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = List7
    public typealias BodyType = List9

    public let body: List9
  }
}
