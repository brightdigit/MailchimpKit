import Foundation

import PrchModel
public struct PostCampaignsIdActionsScheduleRequestModel: Codable, Equatable, Content {
  /** The UTC date and time to schedule the campaign for delivery in ISO 8601 format. Campaigns may only be scheduled to send on the quarter-hour (:00, :15, :30, :45). */
  public var scheduleTime: DateTime

  public var batchDelivery: BatchDeliveryModel?

  /** Choose whether the campaign should use [Timewarp](https://mailchimp.com/help/use-timewarp/) when sending. Campaigns scheduled with Timewarp are localized based on the recipients' time zones. For example, a Timewarp campaign with a `schedule_time` of 13:00 will be sent to each recipient at 1:00pm in their local time. Cannot be set to `true` for campaigns using [Batch Delivery](https://mailchimp.com/help/schedule-batch-delivery/). */
  public var timewarp: Bool?

  public init(scheduleTime: DateTime, batchDelivery: BatchDeliveryModel? = nil, timewarp: Bool? = nil) {
    self.scheduleTime = scheduleTime
    self.batchDelivery = batchDelivery
    self.timewarp = timewarp
  }

  public enum AutomationsAutomationsCodingKeys: String, CodingKey {
    case scheduleTime = "schedule_time"
    case batchDelivery = "batch_delivery"
    case timewarp
  }
}
