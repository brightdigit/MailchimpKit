import Foundation
import PrchModel

public extension Lists {
  /**
   Search for tags on a list by name.

   Search for tags on a list by name. If no name is provided, will return all tags on the list.
   */
  struct SearchTagsByName: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/lists/{list_id}/tag-search"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "list_id" + "}", with: "\(listId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** The unique ID for the list. */
    public let listId: String

    /** The search query used to filter tags.  The search query will be compared to each tag as a prefix, so all tags that have a name starting with this field will be returned. */
    public let name: String?

    public init(listId: String, name: String? = nil) {
      self.listId = listId
      self.name = name
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let name = self.name {
        params["name"] = String(describing: name)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = TagSearchResults
    public typealias BodyType = Empty
  }
}
