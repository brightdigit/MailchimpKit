import Foundation
import PrchModel

public struct PostCampaignsIdActionsScheduleRequest: Codable, Equatable, Content {
  /** The UTC date and time to schedule the campaign for delivery in ISO 8601 format. CampaignsModel may only be scheduled to send on the quarter-hour (:00, :15, :30, :45). */
  public let scheduleTime: DateTime

  public let batchDelivery: BatchDelivery?

  /** Choose whether the campaign should use [Timewarp](https://mailchimp.com/help/use-timewarp/) when sending. CampaignsModel scheduled with Timewarp are localized based on the recipients' time zones. For example, a Timewarp campaign with a `schedule_time` of 13:00 will be sent to each recipient at 1:00pm in their local time. Cannot be set to `true` for campaigns using [Batch Delivery](https://mailchimp.com/help/schedule-batch-delivery/). */
  public let timewarp: Bool?

  public init(scheduleTime: DateTime, batchDelivery: BatchDelivery? = nil, timewarp: Bool? = nil) {
    self.scheduleTime = scheduleTime
    self.batchDelivery = batchDelivery
    self.timewarp = timewarp
  }

  public enum CodingKeys: String, CodingKey {
    case scheduleTime = "schedule_time"
    case batchDelivery = "batch_delivery"
    case timewarp
  }
}
