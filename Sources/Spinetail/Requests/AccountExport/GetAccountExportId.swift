import Foundation
import PrchModel

public extension AccountExport {
  /**
   Get account export info

   Get information about a specific account export.
   */
  struct GetAccountExportId: ServiceCall {
    public static var requiresCredentials: Bool {
      false
    }

    public typealias ServiceAPI = SpinetailAPI

    public static let pathTemplate = "/account-exports/{export_id}"

    public var path: String {
      Self.pathTemplate.replacingOccurrences(of: "{" + "export_id" + "}", with: "\(exportId)")
    }

    public var method: RequestMethod {
      .GET
    }

    /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
    public let fields: [String]?

    /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
    public let excludeFields: [String]?

    /** The unique id for the account export. */
    public let exportId: String

    public init(fields: [String]? = nil, excludeFields: [String]? = nil, exportId: String) {
      self.fields = fields
      self.excludeFields = excludeFields
      self.exportId = exportId
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

    public typealias SuccessType = AccountExportsInner
    public typealias BodyType = Empty
  }
}
