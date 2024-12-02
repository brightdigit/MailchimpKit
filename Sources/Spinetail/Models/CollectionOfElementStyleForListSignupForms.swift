import Foundation
import PrchModel

/** Collection of Element style for List Signup Forms. */
public struct CollectionOfElementStyleForListSignupForms: Codable, Equatable, Content {
  /** A string that identifies the element selector. */
  public enum Selector: String, Codable, Equatable, CaseIterable {
    case pageBackground = "page_background"
    case pageHeader = "page_header"
    case pageOuterWrapper = "page_outer_wrapper"
    case bodyBackground = "body_background"
    case bodyLinkStyle = "body_link_style"
    case formsButtons = "forms_buttons"
    case formsButtonsHovered = "forms_buttons_hovered"
    case formsFieldLabel = "forms_field_label"
    case formsFieldText = "forms_field_text"
    case formsRequired = "forms_required"
    case formsRequiredLegend = "forms_required_legend"
    case formsHelpText = "forms_help_text"
    case formsErrors = "forms_errors"
    case monkeyRewardsBadge = "monkey_rewards_badge"
  }

  /** A collection of options for a selector. */
  public let options: [AnOptionForSignupFormStyles]?

  /** A string that identifies the element selector. */
  public let selector: Selector?

  public init(options: [AnOptionForSignupFormStyles]? = nil, selector: Selector? = nil) {
    self.options = options
    self.selector = selector
  }

  public enum CodingKeys: String, CodingKey {
    case options
    case selector
  }
}
