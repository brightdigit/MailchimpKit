import Foundation
import PrchModel

/** The script used to connect your site with Mailchimp. */
public struct Script: Codable, Equatable, Content {
  /** A pre-built script that you can copy-and-paste into your site to integrate it with Mailchimp. */
  public let fragment: String?

  /** The URL used for any integrations that offer built-in support for connected sites. */
  public let url: String?

  public init(fragment: String? = nil, url: String? = nil) {
    self.fragment = fragment
    self.url = url
  }

  public enum CodingKeys: String, CodingKey {
    case fragment
    case url
  }
}
