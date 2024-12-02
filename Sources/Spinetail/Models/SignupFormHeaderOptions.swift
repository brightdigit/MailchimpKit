import Foundation
import PrchModel

/** Options for customizing your signup form header. */
public struct SignupFormHeaderOptions: Codable, Equatable, Content {
  /** Image alignment. */
  public enum ImageAlign: String, Codable, Equatable, CaseIterable {
    case none
    case left
    case center
    case right
  }

  /** Image border style. */
  public enum ImageBorderStyle: String, Codable, Equatable, CaseIterable {
    case none
    case solid
    case dotted
    case dashed
    case double
    case groove
    case outset
    case inset
    case ridge
  }

  /** Image link target. */
  public enum ImageTarget: String, Codable, Equatable, CaseIterable {
    case blank = "_blank"
    case null
  }

  /** Image alignment. */
  public let imageAlign: ImageAlign?

  /** Alt text for the image. */
  public let imageAlt: String?

  /** Image border color. */
  public let imageBorderColor: String?

  /** Image border style. */
  public let imageBorderStyle: ImageBorderStyle?

  /** Image border width. */
  public let imageBorderWidth: String?

  /** Image height, in pixels. */
  public let imageHeight: String?

  /** The URL that the header image will link to. */
  public let imageLink: String?

  /** Image link target. */
  public let imageTarget: ImageTarget?

  /** Header image URL. */
  public let imageURL: String?

  /** Image width, in pixels. */
  public let imageWidth: String?

  /** Header text. */
  public let text: String?

  public init(imageAlign: ImageAlign? = nil, imageAlt: String? = nil, imageBorderColor: String? = nil, imageBorderStyle: ImageBorderStyle? = nil, imageBorderWidth: String? = nil, imageHeight: String? = nil, imageLink: String? = nil, imageTarget: ImageTarget? = nil, imageURL: String? = nil, imageWidth: String? = nil, text: String? = nil) {
    self.imageAlign = imageAlign
    self.imageAlt = imageAlt
    self.imageBorderColor = imageBorderColor
    self.imageBorderStyle = imageBorderStyle
    self.imageBorderWidth = imageBorderWidth
    self.imageHeight = imageHeight
    self.imageLink = imageLink
    self.imageTarget = imageTarget
    self.imageURL = imageURL
    self.imageWidth = imageWidth
    self.text = text
  }

  public enum CodingKeys: String, CodingKey {
    case imageAlign = "image_align"
    case imageAlt = "image_alt"
    case imageBorderColor = "image_border_color"
    case imageBorderStyle = "image_border_style"
    case imageBorderWidth = "image_border_width"
    case imageHeight = "image_height"
    case imageLink = "image_link"
    case imageTarget = "image_target"
    case imageURL = "image_url"
    case imageWidth = "image_width"
    case text
  }
}
