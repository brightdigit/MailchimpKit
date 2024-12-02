import Foundation
import PrchModel

public extension ActivityFeed {
  /**
   Get latest chimp chatter

   Return the Chimp Chatter for this account ordered by most recent.
   */
  struct GetActivityFeedChimpChatter: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/activity-feed/chimp-chatter"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .GET
    }

    /** The number of records to return. Default value is 10. Maximum value is 1000 */
    public let count: Int?

    /** Used for [pagination](https://mailchimp.com/developer/marketing/docs/methods-parameters/#pagination), this it the number of records from a collection to skip. Default value is 0. */
    public let offset: Int?

    public init(count: Int? = nil, offset: Int? = nil) {
      self.count = count
      self.offset = offset
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let count = self.count {
        params["count"] = String(describing: count)
      }
      if let offset = self.offset {
        params["offset"] = String(describing: offset)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = GetActivityFeedChimpChatter200Response
    public typealias BodyType = Empty
  }
}
