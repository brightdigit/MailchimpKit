import Foundation

import PrchModel
/** Choose whether the campaign should use [Batch Delivery](https://mailchimp.com/help/schedule-batch-delivery/). Cannot be set to `true` for campaigns using [Timewarp](https://mailchimp.com/help/use-timewarp/). */
public struct BatchDeliveryModel: Codable, Equatable, Content {
  /** The number of batches for the campaign send. */
  public var batchCount: Int

  /** The delay, in minutes, between batches. */
  public var batchDelay: Int

  public init(batchCount: Int, batchDelay: Int) {
    self.batchCount = batchCount
    self.batchDelay = batchDelay
  }

  public enum CodingKeys: String, CodingKey {
    case batchCount = "batch_count"
    case batchDelay = "batch_delay"
  }
}
