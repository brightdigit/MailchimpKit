import Foundation
import PrchModel

/** The details of a survey question's report. */
public struct SurveyQuestionReport: Codable, Equatable, Content {
  /** The response type of the survey question. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case pickOne
    case pickMany
    case range
    case text
    case email
  }

  /** The average rating for this range question. */
  public let averageRating: Float?

  public let contactCounts: ContactCounts?

  /** Whether this survey question has an 'other' option. */
  public let hasOther: Bool?

  /** The ID of the survey question. */
  public let id: String?

  /** Whether this survey question is required to answer. */
  public let isRequired: Bool?

  public let mergeField: MergeField3?

  /** The answer choices for this question. */
  public let options: [OptionsInner]?

  /** Label used for the 'other' option of this survey question. */
  public let otherLabel: String?

  /** Placeholder text for this survey question's answer box. */
  public let placeholderLabel: String?

  /** The query of the survey question. */
  public let query: String?

  /** Label for the high end of the range. */
  public let rangeHighLabel: String?

  /** Label for the low end of the range. */
  public let rangeLowLabel: String?

  /** Whether the subscribe checkbox is shown for this email question. */
  public let subscribeCheckboxEnabled: Bool?

  /** Label used for the subscribe checkbox for this email question. */
  public let subscribeCheckboxLabel: String?

  /** The unique ID of the survey. */
  public let surveyId: String?

  /** The total number of responses to this question. */
  public let totalResponses: Int?

  /** The response type of the survey question. */
  public let type: `Type`?

  public init(averageRating: Float? = nil, contactCounts: ContactCounts? = nil, hasOther: Bool? = nil, id: String? = nil, isRequired: Bool? = nil, mergeField: MergeField3? = nil, options: [OptionsInner]? = nil, otherLabel: String? = nil, placeholderLabel: String? = nil, query: String? = nil, rangeHighLabel: String? = nil, rangeLowLabel: String? = nil, subscribeCheckboxEnabled: Bool? = nil, subscribeCheckboxLabel: String? = nil, surveyId: String? = nil, totalResponses: Int? = nil, type: Type? = nil) {
    self.averageRating = averageRating
    self.contactCounts = contactCounts
    self.hasOther = hasOther
    self.id = id
    self.isRequired = isRequired
    self.mergeField = mergeField
    self.options = options
    self.otherLabel = otherLabel
    self.placeholderLabel = placeholderLabel
    self.query = query
    self.rangeHighLabel = rangeHighLabel
    self.rangeLowLabel = rangeLowLabel
    self.subscribeCheckboxEnabled = subscribeCheckboxEnabled
    self.subscribeCheckboxLabel = subscribeCheckboxLabel
    self.surveyId = surveyId
    self.totalResponses = totalResponses
    self.type = type
  }

  public enum CodingKeys: String, CodingKey {
    case averageRating = "average_rating"
    case contactCounts = "contact_counts"
    case hasOther = "has_other"
    case id
    case isRequired = "is_required"
    case mergeField = "merge_field"
    case options
    case otherLabel = "other_label"
    case placeholderLabel = "placeholder_label"
    case query
    case rangeHighLabel = "range_high_label"
    case rangeLowLabel = "range_low_label"
    case subscribeCheckboxEnabled = "subscribe_checkbox_enabled"
    case subscribeCheckboxLabel = "subscribe_checkbox_label"
    case surveyId = "survey_id"
    case totalResponses = "total_responses"
    case type
  }
}
