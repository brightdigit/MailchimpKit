import Foundation
import PrchModel

public extension AutomationsAutomationsBatchWebhooks {
  /**
   Get batch webhook info

   Get information about a specific batch webhook.
   */
  struct GetBatchWebhook: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/batch-webhooks/{batch_webhook_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "batch_webhook_id" + "}", with: "\(batchWebhookId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public var fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public var excludeFields: [String]?

    /** The unique id for the batch webhook. */
    public var batchWebhookId: String

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

    // public static let service = APIService<Response>(id: "getBatchWebhook", tag: "batchWebhooks", method: "GET", path: "/batch-webhooks/{batch_webhook_id}", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public typealias SuccessType = BatchWebhookModel
    public typealias BodyType = Empty
  }
}
