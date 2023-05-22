import Foundation

import PrchModel
/** An object describing campaign engagement on Facebook. */
public struct FacebookLikesModel: Codable, Equatable, Content {
  /** The number of Facebook likes for the campaign. */
  public var facebookLikes: Int?

  /** The number of recipients who liked the campaign on Facebook. */
  public var recipientLikes: Int?

  /** The number of unique likes. */
  public var uniqueLikes: Int?

  public init(facebookLikes: Int? = nil, recipientLikes: Int? = nil, uniqueLikes: Int? = nil) {
    self.facebookLikes = facebookLikes
    self.recipientLikes = recipientLikes
    self.uniqueLikes = uniqueLikes
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case facebookLikes = "facebook_likes"
    case recipientLikes = "recipient_likes"
    case uniqueLikes = "unique_likes"
  }
}
