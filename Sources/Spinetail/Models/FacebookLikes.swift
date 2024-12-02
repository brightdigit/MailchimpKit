import Foundation
import PrchModel

/** An object describing campaign engagement on Facebook. */
public struct FacebookLikes: Codable, Equatable, Content {
  /** The number of Facebook likes for the campaign. */
  public let facebookLikes: Int?

  /** The number of recipients who liked the campaign on Facebook. */
  public let recipientLikes: Int?

  /** The number of unique likes. */
  public let uniqueLikes: Int?

  public init(facebookLikes: Int? = nil, recipientLikes: Int? = nil, uniqueLikes: Int? = nil) {
    self.facebookLikes = facebookLikes
    self.recipientLikes = recipientLikes
    self.uniqueLikes = uniqueLikes
  }

  public enum CodingKeys: String, CodingKey {
    case facebookLikes = "facebook_likes"
    case recipientLikes = "recipient_likes"
    case uniqueLikes = "unique_likes"
  }
}
