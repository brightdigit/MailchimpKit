import Foundation
import PrchModel

/** A single email domain's performance */
public struct EmailDomain: Codable, Equatable, Content {
  /** The number of bounces at a domain. */
  public let bounces: Int?

  /** The percentage of total bounces from this domain. */
  public let bouncesPct: Double?

  /** The number of clicks for a domain. */
  public let clicks: Int?

  /** The percentage of total clicks from this domain. */
  public let clicksPct: Double?

  /** The number of successful deliveries for a domain. */
  public let delivered: Int?

  /** The name of the domain (gmail.com, hotmail.com, yahoo.com). */
  public let domain: String?

  /** The percentage of total emails that went to this domain. */
  public let emailsPct: Double?

  /** The number of emails sent to that specific domain. */
  public let emailsSent: Int?

  /** The number of opens for a domain. */
  public let opens: Int?

  /** The percentage of total opens from this domain. */
  public let opensPct: Double?

  /** The total number of unsubscribes for a domain. */
  public let unsubs: Int?

  /** The percentage of total unsubscribes from this domain. */
  public let unsubsPct: Double?

  public init(bounces: Int? = nil, bouncesPct: Double? = nil, clicks: Int? = nil, clicksPct: Double? = nil, delivered: Int? = nil, domain: String? = nil, emailsPct: Double? = nil, emailsSent: Int? = nil, opens: Int? = nil, opensPct: Double? = nil, unsubs: Int? = nil, unsubsPct: Double? = nil) {
    self.bounces = bounces
    self.bouncesPct = bouncesPct
    self.clicks = clicks
    self.clicksPct = clicksPct
    self.delivered = delivered
    self.domain = domain
    self.emailsPct = emailsPct
    self.emailsSent = emailsSent
    self.opens = opens
    self.opensPct = opensPct
    self.unsubs = unsubs
    self.unsubsPct = unsubsPct
  }

  public enum CodingKeys: String, CodingKey {
    case bounces
    case bouncesPct = "bounces_pct"
    case clicks
    case clicksPct = "clicks_pct"
    case delivered
    case domain
    case emailsPct = "emails_pct"
    case emailsSent = "emails_sent"
    case opens
    case opensPct = "opens_pct"
    case unsubs
    case unsubsPct = "unsubs_pct"
  }
}
