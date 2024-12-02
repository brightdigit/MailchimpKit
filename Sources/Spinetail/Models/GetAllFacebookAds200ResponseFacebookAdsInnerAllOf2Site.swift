import Foundation
import PrchModel

/** Connected Site */
public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Site: Codable, Equatable, Content {
  /** The ID of this connected site. */
  public let id: Int?

  /** The name of the connected site */
  public let name: String?

  /** The URL for this connected site. */
  public let url: String?

  public init(id: Int? = nil, name: String? = nil, url: String? = nil) {
    self.id = id
    self.name = name
    self.url = url
  }

  public enum CodingKeys: String, CodingKey {
    case id
    case name
    case url
  }
}
