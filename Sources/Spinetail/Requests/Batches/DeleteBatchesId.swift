import Foundation
import PrchModel

public extension Batches {
  /**
   Delete batch request

   Stops a batch request from running. Since only one batch request is run at a time, this can be used to cancel a long running request. The results of any completed operations will not be available after this call.
   */
  struct DeleteBatchesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/batches/{batch_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "batch_id" + "}", with: "\(batchId)")
    }

    public var method: RequestMethod {
      .DELETE
    }

    /** The unique id for the batch operation. */
    public let batchId: String

    public init(batchId: String) {
      self.batchId = batchId
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Empty
    public typealias BodyType = Empty
  }
}
