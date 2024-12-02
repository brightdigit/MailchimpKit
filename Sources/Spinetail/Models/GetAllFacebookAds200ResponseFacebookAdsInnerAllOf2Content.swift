import Foundation
import PrchModel

public struct GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Content: Codable, Equatable, Content {
  public let attachments: [GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ContentAttachmentsInner]?

  public let callToAction: String?

  public let description: String?

  public let imageURL: String?

  public let linkURL: String?

  public let message: String?

  public let title: String?

  public init(attachments: [GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ContentAttachmentsInner]? = nil, callToAction: String? = nil, description: String? = nil, imageURL: String? = nil, linkURL: String? = nil, message: String? = nil, title: String? = nil) {
    self.attachments = attachments
    self.callToAction = callToAction
    self.description = description
    self.imageURL = imageURL
    self.linkURL = linkURL
    self.message = message
    self.title = title
  }

  public enum CodingKeys: String, CodingKey {
    case attachments
    case callToAction = "call_to_action"
    case description
    case imageURL = "image_url"
    case linkURL = "link_url"
    case message
    case title
  }
}
