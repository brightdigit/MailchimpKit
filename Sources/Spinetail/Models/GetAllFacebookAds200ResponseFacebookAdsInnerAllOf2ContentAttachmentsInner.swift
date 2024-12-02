import Foundation
import PrchModel

public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ContentAttachmentsInner: Codable, Equatable, Content {
  public let callToAction: String?

  public let description: String?

  public let imageURL: String?

  public let linkURL: String?

  public let name: String?

  public init(callToAction: String? = nil, description: String? = nil, imageURL: String? = nil, linkURL: String? = nil, name: String? = nil) {
    self.callToAction = callToAction
    self.description = description
    self.imageURL = imageURL
    self.linkURL = linkURL
    self.name = name
  }

  public enum CodingKeys: String, CodingKey {
    case callToAction = "call_to_action"
    case description
    case imageURL = "image_url"
    case linkURL = "link_url"
    case name
  }
}
