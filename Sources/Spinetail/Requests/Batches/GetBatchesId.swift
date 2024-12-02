import Foundation
import PrchModel

public extension Batches {
  /**
   Get batch operation status

   Get the status of a batch request.
   */
  struct GetBatchesId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/batches/{batch_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "batch_id" + "}", with: "\(batchId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The unique id for the batch operation. */
    public let batchId: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, batchId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.batchId = batchId
    }

    public var parameters: [String: String] {
      var params: [String: String] = [:]
      if let fields = self.fields?.joined(separator: ",") {
        params["fields"] = String(describing: fields)
      }
      if let excludeFields = self.excludeFields?.joined(separator: ",") {
        params["exclude_fields"] = String(describing: excludeFields)
      }
      return params
    }

    public var headers: [String: String] { [:] }

    public typealias SuccessType = Batch
    public typealias BodyType = Empty
  }
}
