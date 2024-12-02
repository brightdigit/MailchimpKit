import Foundation
import PrchModel

public extension Batches {
  /**
   Start batch operation

   Begin processing a batch operations request.
   */
  struct PostBatches: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/batches"

    public var path: String {
      Self.pathTemplate
    }

    public var method: RequestMethod {
      .POST
    }

    public init(body: PostBatchesRequest) {
      self.body = body
    }

    public var parameters: [String: String] { [:] }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Batch
    public typealias BodyType = PostBatchesRequest

    public let body: PostBatchesRequest
  }
}
