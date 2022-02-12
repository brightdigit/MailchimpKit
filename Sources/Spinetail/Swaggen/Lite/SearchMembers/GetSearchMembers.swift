import Foundation
import Prch

public extension SearchMembers {
  /**
   Search members

   Search for list members. This search can be restricted to a specific list, or can be used to search across all lists in an account.
   */
  enum GetSearchMembers {
    public static let service = Service<Response>(id: "getSearchMembers", tag: "searchMembers", method: "GET", path: "/search-members", hasBody: false, securityRequirements: [SecurityRequirement(type: "basicAuth", scopes: [])])

    public struct Request: ServiceRequest {
      public struct Options {
        /** A comma-separated list of fields to return. Reference parameters of sub-objects with dot notation. */
        public var fields: [String]?

        /** A comma-separated list of fields to exclude. Reference parameters of sub-objects with dot notation. */
        public var excludeFields: [String]?

        /** The search query used to filter results. Query should be a valid email, or a string representing a contact's first or last name. */
        public var query: String

        /** The unique id for the list. */
        public var listId: String?

        public init(fields: [String]? = nil, excludeFields: [String]? = nil, query: String, listId: String? = nil) {
          self.fields = fields
          self.excludeFields = excludeFields
          self.query = query
          self.listId = listId
        }
      }

      public var options: Options

      public init(options: Options) {
        self.options = options
      }

      public typealias ResponseType = Response

      public var service: Service<Response> {
        GetSearchMembers.service
      }

      /// convenience initialiser so an Option doesn't have to be created
      public init(fields: [String]? = nil, excludeFields: [String]? = nil, query: String, listId: String? = nil) {
        let options = Options(fields: fields, excludeFields: excludeFields, query: query, listId: listId)
        self.init(options: options)
      }

      public var queryParameters: [String: Any] {
        var params: [String: Any] = [:]
        if let fields = options.fields?.joined(separator: ",") {
          params["fields"] = fields
        }
        if let excludeFields = options.excludeFields?.joined(separator: ",") {
          params["exclude_fields"] = excludeFields
        }
        params["query"] = options.query
        if let listId = options.listId {
          params["list_id"] = listId
        }
        return params
      }
    }

    public enum Response: DeprecatedResponse, CustomStringConvertible, CustomDebugStringConvertible {
      public typealias APIType = MailchimpAPI
      /** Members found for given search term */
      public struct Status200: Model {
        /** A list of link types and descriptions for the API schema documents. */
        public var links: [Links]?

        /** Exact matches of the provided search query. */
        public var exactMatches: ExactMatches?

        /** Partial matches of the provided search query. */
        public var fullSearch: FullSearch?

        /** This object represents a link from the resource where it is found to another resource or action that may be performed. */
        public struct Links: Model {
          /** The HTTP method that should be used when accessing the URL defined in 'href'. */
          public enum Method: String, Codable, Equatable, CaseIterable {
            case get = "GET"
            case post = "POST"
            case put = "PUT"
            case patch = "PATCH"
            case delete = "DELETE"
            case options = "OPTIONS"
            case head = "HEAD"
          }

          /** This property contains a fully-qualified URL that can be called to retrieve the linked resource or perform the linked action. */
          public var href: String?

          /** The HTTP method that should be used when accessing the URL defined in 'href'. */
          public var method: Method?

          /** As with an HTML 'rel' attribute, this describes the type of link. */
          public var rel: String?

          /** For HTTP methods that can receive bodies (POST and PUT), this is a URL representing the schema that the body should conform to. */
          public var schema: String?

          /** For GETs, this is a URL representing the schema that the response should conform to. */
          public var targetSchema: String?

          public init(href: String? = nil, method: Method? = nil, rel: String? = nil, schema: String? = nil, targetSchema: String? = nil) {
            self.href = href
            self.method = method
            self.rel = rel
            self.schema = schema
            self.targetSchema = targetSchema
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            href = try container.decodeIfPresent("href")
            method = try container.decodeIfPresent("method")
            rel = try container.decodeIfPresent("rel")
            schema = try container.decodeIfPresent("schema")
            targetSchema = try container.decodeIfPresent("targetSchema")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(href, forKey: "href")
            try container.encodeIfPresent(method, forKey: "method")
            try container.encodeIfPresent(rel, forKey: "rel")
            try container.encodeIfPresent(schema, forKey: "schema")
            try container.encodeIfPresent(targetSchema, forKey: "targetSchema")
          }
        }

        /** Exact matches of the provided search query. */
        public struct ExactMatches: Model {
          /** An array of objects, each representing a specific list member. */
          public var members: [Members]?

          /** The total number of items matching the query regardless of pagination. */
          public var totalItems: Int?

          /** Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed. */
          public struct Members: Model {
            /** Subscriber's current status. */
            public enum Status: String, Codable, Equatable, CaseIterable {
              case subscribed
              case unsubscribed
              case cleaned
              case pending
              case transactional
              case archived
            }

            /** A list of link types and descriptions for the API schema documents. */
            public var links: [Links]?

            /** Email address for a subscriber. */
            public var emailAddress: String?

            /** The list member's email client. */
            public var emailClient: String?

            /** Type of email this member asked to get ('html' or 'text'). */
            public var emailType: String?

            /** The contact's full name. */
            public var fullName: String?

            /** The MD5 hash of the lowercase version of the list member's email address. */
            public var id: String?

            /** The key of this object's properties is the ID of the interest in question. */
            public var interests: [String: Bool]?

            /** The IP address the subscriber used to confirm their opt-in status. */
            public var ipOpt: String?

            /** IP address the subscriber signed up from. */
            public var ipSignup: String?

            /** If set/detected, the [subscriber's language](https://mailchimp.com/help/view-and-edit-contact-languages/). */
            public var language: String?

            /** The date and time the member's info was last changed in ISO 8601 format. */
            public var lastChanged: Date?

            /** The most recent Note added about this member. */
            public var lastNote: LastNote?

            /** The list id. */
            public var listId: String?

            /** Subscriber location information. */
            public var location: Location?

            /** The marketing permissions for the subscriber. */
            public var marketingPermissions: [MarketingPermissions]?

            /** Star rating for this member, between 1 and 5. */
            public var memberRating: Int?

            /** A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {"FNAME":"Freddie"} */
            public var mergeFields: [String: AnyCodable]?

            /** The source from which the subscriber was added to this list. */
            public var source: String?

            /** Open and click rates for this subscriber. */
            public var stats: Stats?

            /** Subscriber's current status. */
            public var status: Status?

            /** Returns up to 50 tags applied to this member. To retrieve all tags see [Member Tags](https://mailchimp.com/developer/marketing/api/list-member-tags/). */
            public var tags: [Tags]?

            /** The number of tags applied to this member. */
            public var tagsCount: Int?

            /** The date and time the subscribe confirmed their opt-in status in ISO 8601 format. */
            public var timestampOpt: Date?

            /** The date and time the subscriber signed up for the list in ISO 8601 format. */
            public var timestampSignup: Date?

            /** An identifier for the address across all of Mailchimp. */
            public var uniqueEmailId: String?

            /** A subscriber's reason for unsubscribing. */
            public var unsubscribeReason: String?

            /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
            public var vip: Bool?

            /** The ID used in the Mailchimp web application. View this member in your Mailchimp account at `https://{dc}.admin.mailchimp.com/lists/members/view?id={web_id}`. */
            public var webId: Int?

            /** This object represents a link from the resource where it is found to another resource or action that may be performed. */
            public struct Links: Model {
              /** The HTTP method that should be used when accessing the URL defined in 'href'. */
              public enum Method: String, Codable, Equatable, CaseIterable {
                case get = "GET"
                case post = "POST"
                case put = "PUT"
                case patch = "PATCH"
                case delete = "DELETE"
                case options = "OPTIONS"
                case head = "HEAD"
              }

              /** This property contains a fully-qualified URL that can be called to retrieve the linked resource or perform the linked action. */
              public var href: String?

              /** The HTTP method that should be used when accessing the URL defined in 'href'. */
              public var method: Method?

              /** As with an HTML 'rel' attribute, this describes the type of link. */
              public var rel: String?

              /** For HTTP methods that can receive bodies (POST and PUT), this is a URL representing the schema that the body should conform to. */
              public var schema: String?

              /** For GETs, this is a URL representing the schema that the response should conform to. */
              public var targetSchema: String?

              public init(href: String? = nil, method: Method? = nil, rel: String? = nil, schema: String? = nil, targetSchema: String? = nil) {
                self.href = href
                self.method = method
                self.rel = rel
                self.schema = schema
                self.targetSchema = targetSchema
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                href = try container.decodeIfPresent("href")
                method = try container.decodeIfPresent("method")
                rel = try container.decodeIfPresent("rel")
                schema = try container.decodeIfPresent("schema")
                targetSchema = try container.decodeIfPresent("targetSchema")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(href, forKey: "href")
                try container.encodeIfPresent(method, forKey: "method")
                try container.encodeIfPresent(rel, forKey: "rel")
                try container.encodeIfPresent(schema, forKey: "schema")
                try container.encodeIfPresent(targetSchema, forKey: "targetSchema")
              }
            }

            /** The most recent Note added about this member. */
            public struct LastNote: Model {
              /** The date and time the note was created in ISO 8601 format. */
              public var createdAt: Date?

              /** The author of the note. */
              public var createdBy: String?

              /** The content of the note. */
              public var note: String?

              /** The note id. */
              public var noteId: Int?

              public init(createdAt: Date? = nil, createdBy: String? = nil, note: String? = nil, noteId: Int? = nil) {
                self.createdAt = createdAt
                self.createdBy = createdBy
                self.note = note
                self.noteId = noteId
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                createdAt = try container.decodeIfPresent("created_at")
                createdBy = try container.decodeIfPresent("created_by")
                note = try container.decodeIfPresent("note")
                noteId = try container.decodeIfPresent("note_id")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(createdAt, forKey: "created_at")
                try container.encodeIfPresent(createdBy, forKey: "created_by")
                try container.encodeIfPresent(note, forKey: "note")
                try container.encodeIfPresent(noteId, forKey: "note_id")
              }
            }

            /** Subscriber location information. */
            public struct Location: Model {
              /** The unique code for the location country. */
              public var countryCode: String?

              /** The offset for timezones where daylight saving time is observed. */
              public var dstoff: Int?

              /** The time difference in hours from GMT. */
              public var gmtoff: Int?

              /** The location latitude. */
              public var latitude: Double?

              /** The location longitude. */
              public var longitude: Double?

              /** The timezone for the location. */
              public var timezone: String?

              public init(countryCode: String? = nil, dstoff: Int? = nil, gmtoff: Int? = nil, latitude: Double? = nil, longitude: Double? = nil, timezone: String? = nil) {
                self.countryCode = countryCode
                self.dstoff = dstoff
                self.gmtoff = gmtoff
                self.latitude = latitude
                self.longitude = longitude
                self.timezone = timezone
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                countryCode = try container.decodeIfPresent("country_code")
                dstoff = try container.decodeIfPresent("dstoff")
                gmtoff = try container.decodeIfPresent("gmtoff")
                latitude = try container.decodeIfPresent("latitude")
                longitude = try container.decodeIfPresent("longitude")
                timezone = try container.decodeIfPresent("timezone")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(countryCode, forKey: "country_code")
                try container.encodeIfPresent(dstoff, forKey: "dstoff")
                try container.encodeIfPresent(gmtoff, forKey: "gmtoff")
                try container.encodeIfPresent(latitude, forKey: "latitude")
                try container.encodeIfPresent(longitude, forKey: "longitude")
                try container.encodeIfPresent(timezone, forKey: "timezone")
              }
            }

            /** A single marketing permission a subscriber has either opted-in to or opted-out of. */
            public struct MarketingPermissions: Model {
              /** If the subscriber has opted-in to the marketing permission. */
              public var enabled: Bool?

              /** The id for the marketing permission on the list */
              public var marketingPermissionId: String?

              /** The text of the marketing permission. */
              public var text: String?

              public init(enabled: Bool? = nil, marketingPermissionId: String? = nil, text: String? = nil) {
                self.enabled = enabled
                self.marketingPermissionId = marketingPermissionId
                self.text = text
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                enabled = try container.decodeIfPresent("enabled")
                marketingPermissionId = try container.decodeIfPresent("marketing_permission_id")
                text = try container.decodeIfPresent("text")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(enabled, forKey: "enabled")
                try container.encodeIfPresent(marketingPermissionId, forKey: "marketing_permission_id")
                try container.encodeIfPresent(text, forKey: "text")
              }
            }

            /** Open and click rates for this subscriber. */
            public struct Stats: Model {
              /** A subscriber's average clickthrough rate. */
              public var avgClickRate: Double?

              /** A subscriber's average open rate. */
              public var avgOpenRate: Double?

              /** Ecommerce stats for the list member if the list is attached to a store. */
              public var ecommerceData: EcommerceData?

              /** Ecommerce stats for the list member if the list is attached to a store. */
              public struct EcommerceData: Model {
                /** The three-letter ISO 4217 code for the currency that the store accepts. */
                public var currencyCode: String?

                /** The total number of orders placed by the list member. */
                public var numberOfOrders: Double?

                /** The total revenue the list member has brought in. */
                public var totalRevenue: Double?

                public init(currencyCode: String? = nil, numberOfOrders: Double? = nil, totalRevenue: Double? = nil) {
                  self.currencyCode = currencyCode
                  self.numberOfOrders = numberOfOrders
                  self.totalRevenue = totalRevenue
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  currencyCode = try container.decodeIfPresent("currency_code")
                  numberOfOrders = try container.decodeIfPresent("number_of_orders")
                  totalRevenue = try container.decodeIfPresent("total_revenue")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(currencyCode, forKey: "currency_code")
                  try container.encodeIfPresent(numberOfOrders, forKey: "number_of_orders")
                  try container.encodeIfPresent(totalRevenue, forKey: "total_revenue")
                }
              }

              public init(avgClickRate: Double? = nil, avgOpenRate: Double? = nil, ecommerceData: EcommerceData? = nil) {
                self.avgClickRate = avgClickRate
                self.avgOpenRate = avgOpenRate
                self.ecommerceData = ecommerceData
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                avgClickRate = try container.decodeIfPresent("avg_click_rate")
                avgOpenRate = try container.decodeIfPresent("avg_open_rate")
                ecommerceData = try container.decodeIfPresent("ecommerce_data")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(avgClickRate, forKey: "avg_click_rate")
                try container.encodeIfPresent(avgOpenRate, forKey: "avg_open_rate")
                try container.encodeIfPresent(ecommerceData, forKey: "ecommerce_data")
              }
            }

            /** Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed. */
            public struct Tags: Model {
              /** The tag id. */
              public var id: Int?

              /** The name of the tag */
              public var name: String?

              public init(id: Int? = nil, name: String? = nil) {
                self.id = id
                self.name = name
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                id = try container.decodeIfPresent("id")
                name = try container.decodeIfPresent("name")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(id, forKey: "id")
                try container.encodeIfPresent(name, forKey: "name")
              }
            }

            public init(links: [Links]? = nil, emailAddress: String? = nil, emailClient: String? = nil, emailType: String? = nil, fullName: String? = nil, id: String? = nil, interests: [String: Bool]? = nil, ipOpt: String? = nil, ipSignup: String? = nil, language: String? = nil, lastChanged: Date? = nil, lastNote: LastNote? = nil, listId: String? = nil, location: Location? = nil, marketingPermissions: [MarketingPermissions]? = nil, memberRating: Int? = nil, mergeFields: [String: AnyCodable]? = nil, source: String? = nil, stats: Stats? = nil, status: Status? = nil, tags: [Tags]? = nil, tagsCount: Int? = nil, timestampOpt: Date? = nil, timestampSignup: Date? = nil, uniqueEmailId: String? = nil, unsubscribeReason: String? = nil, vip: Bool? = nil, webId: Int? = nil) {
              self.links = links
              self.emailAddress = emailAddress
              self.emailClient = emailClient
              self.emailType = emailType
              self.fullName = fullName
              self.id = id
              self.interests = interests
              self.ipOpt = ipOpt
              self.ipSignup = ipSignup
              self.language = language
              self.lastChanged = lastChanged
              self.lastNote = lastNote
              self.listId = listId
              self.location = location
              self.marketingPermissions = marketingPermissions
              self.memberRating = memberRating
              self.mergeFields = mergeFields
              self.source = source
              self.stats = stats
              self.status = status
              self.tags = tags
              self.tagsCount = tagsCount
              self.timestampOpt = timestampOpt
              self.timestampSignup = timestampSignup
              self.uniqueEmailId = uniqueEmailId
              self.unsubscribeReason = unsubscribeReason
              self.vip = vip
              self.webId = webId
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              links = try container.decodeArrayIfPresent("_links")
              emailAddress = try container.decodeIfPresent("email_address")
              emailClient = try container.decodeIfPresent("email_client")
              emailType = try container.decodeIfPresent("email_type")
              fullName = try container.decodeIfPresent("full_name")
              id = try container.decodeIfPresent("id")
              interests = try container.decodeIfPresent("interests")
              ipOpt = try container.decodeIfPresent("ip_opt")
              ipSignup = try container.decodeIfPresent("ip_signup")
              language = try container.decodeIfPresent("language")
              lastChanged = try container.decodeIfPresent("last_changed")
              lastNote = try container.decodeIfPresent("last_note")
              listId = try container.decodeIfPresent("list_id")
              location = try container.decodeIfPresent("location")
              marketingPermissions = try container.decodeArrayIfPresent("marketing_permissions")
              memberRating = try container.decodeIfPresent("member_rating")
              mergeFields = try container.decodeAnyCodableDictionary("merge_fields")
              source = try container.decodeIfPresent("source")
              stats = try container.decodeIfPresent("stats")
              status = try container.decodeIfPresent("status")
              tags = try container.decodeArrayIfPresent("tags")
              tagsCount = try container.decodeIfPresent("tags_count")
              timestampOpt = try container.decodeIfPresent("timestamp_opt")
              timestampSignup = try container.decodeIfPresent("timestamp_signup")
              uniqueEmailId = try container.decodeIfPresent("unique_email_id")
              unsubscribeReason = try container.decodeIfPresent("unsubscribe_reason")
              vip = try container.decodeIfPresent("vip")
              webId = try container.decodeIfPresent("web_id")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(links, forKey: "_links")
              try container.encodeIfPresent(emailAddress, forKey: "email_address")
              try container.encodeIfPresent(emailClient, forKey: "email_client")
              try container.encodeIfPresent(emailType, forKey: "email_type")
              try container.encodeIfPresent(fullName, forKey: "full_name")
              try container.encodeIfPresent(id, forKey: "id")
              try container.encodeIfPresent(interests, forKey: "interests")
              try container.encodeIfPresent(ipOpt, forKey: "ip_opt")
              try container.encodeIfPresent(ipSignup, forKey: "ip_signup")
              try container.encodeIfPresent(language, forKey: "language")
              try container.encodeIfPresent(lastChanged, forKey: "last_changed")
              try container.encodeIfPresent(lastNote, forKey: "last_note")
              try container.encodeIfPresent(listId, forKey: "list_id")
              try container.encodeIfPresent(location, forKey: "location")
              try container.encodeIfPresent(marketingPermissions, forKey: "marketing_permissions")
              try container.encodeIfPresent(memberRating, forKey: "member_rating")
              try container.encodeAnyIfPresent(mergeFields, forKey: "merge_fields")
              try container.encodeIfPresent(source, forKey: "source")
              try container.encodeIfPresent(stats, forKey: "stats")
              try container.encodeIfPresent(status, forKey: "status")
              try container.encodeIfPresent(tags, forKey: "tags")
              try container.encodeIfPresent(tagsCount, forKey: "tags_count")
              try container.encodeIfPresent(timestampOpt, forKey: "timestamp_opt")
              try container.encodeIfPresent(timestampSignup, forKey: "timestamp_signup")
              try container.encodeIfPresent(uniqueEmailId, forKey: "unique_email_id")
              try container.encodeIfPresent(unsubscribeReason, forKey: "unsubscribe_reason")
              try container.encodeIfPresent(vip, forKey: "vip")
              try container.encodeIfPresent(webId, forKey: "web_id")
            }
          }

          public init(members: [Members]? = nil, totalItems: Int? = nil) {
            self.members = members
            self.totalItems = totalItems
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            members = try container.decodeArrayIfPresent("members")
            totalItems = try container.decodeIfPresent("total_items")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(members, forKey: "members")
            try container.encodeIfPresent(totalItems, forKey: "total_items")
          }
        }

        /** Partial matches of the provided search query. */
        public struct FullSearch: Model {
          /** An array of objects, each representing a specific list member. */
          public var members: [Members]?

          /** The total number of items matching the query regardless of pagination. */
          public var totalItems: Int?

          /** Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed. */
          public struct Members: Model {
            /** Subscriber's current status. */
            public enum Status: String, Codable, Equatable, CaseIterable {
              case subscribed
              case unsubscribed
              case cleaned
              case pending
              case transactional
              case archived
            }

            /** A list of link types and descriptions for the API schema documents. */
            public var links: [Links]?

            /** Email address for a subscriber. */
            public var emailAddress: String?

            /** The list member's email client. */
            public var emailClient: String?

            /** Type of email this member asked to get ('html' or 'text'). */
            public var emailType: String?

            /** The contact's full name. */
            public var fullName: String?

            /** The MD5 hash of the lowercase version of the list member's email address. */
            public var id: String?

            /** The key of this object's properties is the ID of the interest in question. */
            public var interests: [String: Bool]?

            /** The IP address the subscriber used to confirm their opt-in status. */
            public var ipOpt: String?

            /** IP address the subscriber signed up from. */
            public var ipSignup: String?

            /** If set/detected, the [subscriber's language](https://mailchimp.com/help/view-and-edit-contact-languages/). */
            public var language: String?

            /** The date and time the member's info was last changed in ISO 8601 format. */
            public var lastChanged: Date?

            /** The most recent Note added about this member. */
            public var lastNote: LastNote?

            /** The list id. */
            public var listId: String?

            /** Subscriber location information. */
            public var location: Location?

            /** The marketing permissions for the subscriber. */
            public var marketingPermissions: [MarketingPermissions]?

            /** Star rating for this member, between 1 and 5. */
            public var memberRating: Int?

            /** A dictionary of merge fields ([audience fields](https://mailchimp.com/help/getting-started-with-merge-tags/)) where the keys are the merge tags. For example, {"FNAME":"Freddie"} */
            // public var mergeFields: [String: AnyCodable]?

            /** The source from which the subscriber was added to this list. */
            public var source: String?

            /** Open and click rates for this subscriber. */
            public var stats: Stats?

            /** Subscriber's current status. */
            public var status: Status?

            /** Returns up to 50 tags applied to this member. To retrieve all tags see [Member Tags](https://mailchimp.com/developer/marketing/api/list-member-tags/). */
            public var tags: [Tags]?

            /** The number of tags applied to this member. */
            public var tagsCount: Int?

            /** The date and time the subscribe confirmed their opt-in status in ISO 8601 format. */
            public var timestampOpt: Date?

            /** The date and time the subscriber signed up for the list in ISO 8601 format. */
            public var timestampSignup: Date?

            /** An identifier for the address across all of Mailchimp. */
            public var uniqueEmailId: String?

            /** A subscriber's reason for unsubscribing. */
            public var unsubscribeReason: String?

            /** [VIP status](https://mailchimp.com/help/designate-and-send-to-vip-contacts/) for subscriber. */
            public var vip: Bool?

            /** The ID used in the Mailchimp web application. View this member in your Mailchimp account at `https://{dc}.admin.mailchimp.com/lists/members/view?id={web_id}`. */
            public var webId: Int?

            /** This object represents a link from the resource where it is found to another resource or action that may be performed. */
            public struct Links: Model {
              /** The HTTP method that should be used when accessing the URL defined in 'href'. */
              public enum Method: String, Codable, Equatable, CaseIterable {
                case get = "GET"
                case post = "POST"
                case put = "PUT"
                case patch = "PATCH"
                case delete = "DELETE"
                case options = "OPTIONS"
                case head = "HEAD"
              }

              /** This property contains a fully-qualified URL that can be called to retrieve the linked resource or perform the linked action. */
              public var href: String?

              /** The HTTP method that should be used when accessing the URL defined in 'href'. */
              public var method: Method?

              /** As with an HTML 'rel' attribute, this describes the type of link. */
              public var rel: String?

              /** For HTTP methods that can receive bodies (POST and PUT), this is a URL representing the schema that the body should conform to. */
              public var schema: String?

              /** For GETs, this is a URL representing the schema that the response should conform to. */
              public var targetSchema: String?

              public init(href: String? = nil, method: Method? = nil, rel: String? = nil, schema: String? = nil, targetSchema: String? = nil) {
                self.href = href
                self.method = method
                self.rel = rel
                self.schema = schema
                self.targetSchema = targetSchema
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                href = try container.decodeIfPresent("href")
                method = try container.decodeIfPresent("method")
                rel = try container.decodeIfPresent("rel")
                schema = try container.decodeIfPresent("schema")
                targetSchema = try container.decodeIfPresent("targetSchema")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(href, forKey: "href")
                try container.encodeIfPresent(method, forKey: "method")
                try container.encodeIfPresent(rel, forKey: "rel")
                try container.encodeIfPresent(schema, forKey: "schema")
                try container.encodeIfPresent(targetSchema, forKey: "targetSchema")
              }
            }

            /** The most recent Note added about this member. */
            public struct LastNote: Model {
              /** The date and time the note was created in ISO 8601 format. */
              public var createdAt: Date?

              /** The author of the note. */
              public var createdBy: String?

              /** The content of the note. */
              public var note: String?

              /** The note id. */
              public var noteId: Int?

              public init(createdAt: Date? = nil, createdBy: String? = nil, note: String? = nil, noteId: Int? = nil) {
                self.createdAt = createdAt
                self.createdBy = createdBy
                self.note = note
                self.noteId = noteId
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                createdAt = try container.decodeIfPresent("created_at")
                createdBy = try container.decodeIfPresent("created_by")
                note = try container.decodeIfPresent("note")
                noteId = try container.decodeIfPresent("note_id")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(createdAt, forKey: "created_at")
                try container.encodeIfPresent(createdBy, forKey: "created_by")
                try container.encodeIfPresent(note, forKey: "note")
                try container.encodeIfPresent(noteId, forKey: "note_id")
              }
            }

            /** Subscriber location information. */
            public struct Location: Model {
              /** The unique code for the location country. */
              public var countryCode: String?

              /** The offset for timezones where daylight saving time is observed. */
              public var dstoff: Int?

              /** The time difference in hours from GMT. */
              public var gmtoff: Int?

              /** The location latitude. */
              public var latitude: Double?

              /** The location longitude. */
              public var longitude: Double?

              /** The timezone for the location. */
              public var timezone: String?

              public init(countryCode: String? = nil, dstoff: Int? = nil, gmtoff: Int? = nil, latitude: Double? = nil, longitude: Double? = nil, timezone: String? = nil) {
                self.countryCode = countryCode
                self.dstoff = dstoff
                self.gmtoff = gmtoff
                self.latitude = latitude
                self.longitude = longitude
                self.timezone = timezone
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                countryCode = try container.decodeIfPresent("country_code")
                dstoff = try container.decodeIfPresent("dstoff")
                gmtoff = try container.decodeIfPresent("gmtoff")
                latitude = try container.decodeIfPresent("latitude")
                longitude = try container.decodeIfPresent("longitude")
                timezone = try container.decodeIfPresent("timezone")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(countryCode, forKey: "country_code")
                try container.encodeIfPresent(dstoff, forKey: "dstoff")
                try container.encodeIfPresent(gmtoff, forKey: "gmtoff")
                try container.encodeIfPresent(latitude, forKey: "latitude")
                try container.encodeIfPresent(longitude, forKey: "longitude")
                try container.encodeIfPresent(timezone, forKey: "timezone")
              }
            }

            /** A single marketing permission a subscriber has either opted-in to or opted-out of. */
            public struct MarketingPermissions: Model {
              /** If the subscriber has opted-in to the marketing permission. */
              public var enabled: Bool?

              /** The id for the marketing permission on the list */
              public var marketingPermissionId: String?

              /** The text of the marketing permission. */
              public var text: String?

              public init(enabled: Bool? = nil, marketingPermissionId: String? = nil, text: String? = nil) {
                self.enabled = enabled
                self.marketingPermissionId = marketingPermissionId
                self.text = text
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                enabled = try container.decodeIfPresent("enabled")
                marketingPermissionId = try container.decodeIfPresent("marketing_permission_id")
                text = try container.decodeIfPresent("text")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(enabled, forKey: "enabled")
                try container.encodeIfPresent(marketingPermissionId, forKey: "marketing_permission_id")
                try container.encodeIfPresent(text, forKey: "text")
              }
            }

            /** Open and click rates for this subscriber. */
            public struct Stats: Model {
              /** A subscriber's average clickthrough rate. */
              public var avgClickRate: Double?

              /** A subscriber's average open rate. */
              public var avgOpenRate: Double?

              /** Ecommerce stats for the list member if the list is attached to a store. */
              public var ecommerceData: EcommerceData?

              /** Ecommerce stats for the list member if the list is attached to a store. */
              public struct EcommerceData: Model {
                /** The three-letter ISO 4217 code for the currency that the store accepts. */
                public var currencyCode: String?

                /** The total number of orders placed by the list member. */
                public var numberOfOrders: Double?

                /** The total revenue the list member has brought in. */
                public var totalRevenue: Double?

                public init(currencyCode: String? = nil, numberOfOrders: Double? = nil, totalRevenue: Double? = nil) {
                  self.currencyCode = currencyCode
                  self.numberOfOrders = numberOfOrders
                  self.totalRevenue = totalRevenue
                }

                public init(from decoder: Decoder) throws {
                  let container = try decoder.container(keyedBy: StringCodingKey.self)

                  currencyCode = try container.decodeIfPresent("currency_code")
                  numberOfOrders = try container.decodeIfPresent("number_of_orders")
                  totalRevenue = try container.decodeIfPresent("total_revenue")
                }

                public func encode(to encoder: Encoder) throws {
                  var container = encoder.container(keyedBy: StringCodingKey.self)

                  try container.encodeIfPresent(currencyCode, forKey: "currency_code")
                  try container.encodeIfPresent(numberOfOrders, forKey: "number_of_orders")
                  try container.encodeIfPresent(totalRevenue, forKey: "total_revenue")
                }
              }

              public init(avgClickRate: Double? = nil, avgOpenRate: Double? = nil, ecommerceData: EcommerceData? = nil) {
                self.avgClickRate = avgClickRate
                self.avgOpenRate = avgOpenRate
                self.ecommerceData = ecommerceData
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                avgClickRate = try container.decodeIfPresent("avg_click_rate")
                avgOpenRate = try container.decodeIfPresent("avg_open_rate")
                ecommerceData = try container.decodeIfPresent("ecommerce_data")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(avgClickRate, forKey: "avg_click_rate")
                try container.encodeIfPresent(avgOpenRate, forKey: "avg_open_rate")
                try container.encodeIfPresent(ecommerceData, forKey: "ecommerce_data")
              }
            }

            /** Individuals who are currently or have been previously subscribed to this list, including members who have bounced or unsubscribed. */
            public struct Tags: Model {
              /** The tag id. */
              public var id: Int?

              /** The name of the tag */
              public var name: String?

              public init(id: Int? = nil, name: String? = nil) {
                self.id = id
                self.name = name
              }

              public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                id = try container.decodeIfPresent("id")
                name = try container.decodeIfPresent("name")
              }

              public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(id, forKey: "id")
                try container.encodeIfPresent(name, forKey: "name")
              }
            }

            public init(links: [Links]? = nil, emailAddress: String? = nil, emailClient: String? = nil, emailType: String? = nil, fullName: String? = nil, id: String? = nil, interests: [String: Bool]? = nil, ipOpt: String? = nil, ipSignup: String? = nil, language: String? = nil, lastChanged: Date? = nil, lastNote: LastNote? = nil, listId: String? = nil, location: Location? = nil, marketingPermissions: [MarketingPermissions]? = nil, memberRating: Int? = nil, mergeFields _: [String: [String: AnyCodable]]? = nil, source: String? = nil, stats: Stats? = nil, status: Status? = nil, tags: [Tags]? = nil, tagsCount: Int? = nil, timestampOpt: Date? = nil, timestampSignup: Date? = nil, uniqueEmailId: String? = nil, unsubscribeReason: String? = nil, vip: Bool? = nil, webId: Int? = nil) {
              self.links = links
              self.emailAddress = emailAddress
              self.emailClient = emailClient
              self.emailType = emailType
              self.fullName = fullName
              self.id = id
              self.interests = interests
              self.ipOpt = ipOpt
              self.ipSignup = ipSignup
              self.language = language
              self.lastChanged = lastChanged
              self.lastNote = lastNote
              self.listId = listId
              self.location = location
              self.marketingPermissions = marketingPermissions
              self.memberRating = memberRating
              // self.mergeFields = mergeFields
              self.source = source
              self.stats = stats
              self.status = status
              self.tags = tags
              self.tagsCount = tagsCount
              self.timestampOpt = timestampOpt
              self.timestampSignup = timestampSignup
              self.uniqueEmailId = uniqueEmailId
              self.unsubscribeReason = unsubscribeReason
              self.vip = vip
              self.webId = webId
            }

            public init(from decoder: Decoder) throws {
              let container = try decoder.container(keyedBy: StringCodingKey.self)

              links = try container.decodeArrayIfPresent("_links")
              emailAddress = try container.decodeIfPresent("email_address")
              emailClient = try container.decodeIfPresent("email_client")
              emailType = try container.decodeIfPresent("email_type")
              fullName = try container.decodeIfPresent("full_name")
              id = try container.decodeIfPresent("id")
              interests = try container.decodeIfPresent("interests")
              ipOpt = try container.decodeIfPresent("ip_opt")
              ipSignup = try container.decodeIfPresent("ip_signup")
              language = try container.decodeIfPresent("language")
              lastChanged = try container.decodeIfPresent("last_changed")
              lastNote = try container.decodeIfPresent("last_note")
              listId = try container.decodeIfPresent("list_id")
              location = try container.decodeIfPresent("location")
              marketingPermissions = try container.decodeArrayIfPresent("marketing_permissions")
              memberRating = try container.decodeIfPresent("member_rating")
              // mergeFields = try container.decodeAnyCodableDictionary("merge_fields")
              source = try container.decodeIfPresent("source")
              stats = try container.decodeIfPresent("stats")
              status = try container.decodeIfPresent("status")
              tags = try container.decodeArrayIfPresent("tags")
              tagsCount = try container.decodeIfPresent("tags_count")
              timestampOpt = try container.decodeIfPresent("timestamp_opt")
              timestampSignup = try container.decodeIfPresent("timestamp_signup")
              uniqueEmailId = try container.decodeIfPresent("unique_email_id")
              unsubscribeReason = try container.decodeIfPresent("unsubscribe_reason")
              vip = try container.decodeIfPresent("vip")
              webId = try container.decodeIfPresent("web_id")
            }

            public func encode(to encoder: Encoder) throws {
              var container = encoder.container(keyedBy: StringCodingKey.self)

              try container.encodeIfPresent(links, forKey: "_links")
              try container.encodeIfPresent(emailAddress, forKey: "email_address")
              try container.encodeIfPresent(emailClient, forKey: "email_client")
              try container.encodeIfPresent(emailType, forKey: "email_type")
              try container.encodeIfPresent(fullName, forKey: "full_name")
              try container.encodeIfPresent(id, forKey: "id")
              try container.encodeIfPresent(interests, forKey: "interests")
              try container.encodeIfPresent(ipOpt, forKey: "ip_opt")
              try container.encodeIfPresent(ipSignup, forKey: "ip_signup")
              try container.encodeIfPresent(language, forKey: "language")
              try container.encodeIfPresent(lastChanged, forKey: "last_changed")
              try container.encodeIfPresent(lastNote, forKey: "last_note")
              try container.encodeIfPresent(listId, forKey: "list_id")
              try container.encodeIfPresent(location, forKey: "location")
              try container.encodeIfPresent(marketingPermissions, forKey: "marketing_permissions")
              try container.encodeIfPresent(memberRating, forKey: "member_rating")
              // try container.encodeAnyIfPresent(mergeFields, forKey: "merge_fields")
              try container.encodeIfPresent(source, forKey: "source")
              try container.encodeIfPresent(stats, forKey: "stats")
              try container.encodeIfPresent(status, forKey: "status")
              try container.encodeIfPresent(tags, forKey: "tags")
              try container.encodeIfPresent(tagsCount, forKey: "tags_count")
              try container.encodeIfPresent(timestampOpt, forKey: "timestamp_opt")
              try container.encodeIfPresent(timestampSignup, forKey: "timestamp_signup")
              try container.encodeIfPresent(uniqueEmailId, forKey: "unique_email_id")
              try container.encodeIfPresent(unsubscribeReason, forKey: "unsubscribe_reason")
              try container.encodeIfPresent(vip, forKey: "vip")
              try container.encodeIfPresent(webId, forKey: "web_id")
            }
          }

          public init(members: [Members]? = nil, totalItems: Int? = nil) {
            self.members = members
            self.totalItems = totalItems
          }

          public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            members = try container.decodeArrayIfPresent("members")
            totalItems = try container.decodeIfPresent("total_items")
          }

          public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(members, forKey: "members")
            try container.encodeIfPresent(totalItems, forKey: "total_items")
          }
        }

        public init(links: [Links]? = nil, exactMatches: ExactMatches? = nil, fullSearch: FullSearch? = nil) {
          self.links = links
          self.exactMatches = exactMatches
          self.fullSearch = fullSearch
        }

        public init(from decoder: Decoder) throws {
          let container = try decoder.container(keyedBy: StringCodingKey.self)

          links = try container.decodeArrayIfPresent("_links")
          exactMatches = try container.decodeIfPresent("exact_matches")
          fullSearch = try container.decodeIfPresent("full_search")
        }

        public func encode(to encoder: Encoder) throws {
          var container = encoder.container(keyedBy: StringCodingKey.self)

          try container.encodeIfPresent(links, forKey: "_links")
          try container.encodeIfPresent(exactMatches, forKey: "exact_matches")
          try container.encodeIfPresent(fullSearch, forKey: "full_search")
        }
      }

      public typealias SuccessType = Status200
      public typealias FailureType = DefaultResponse
      case status200(Status200)

      /** An error generated by the Mailchimp API. */
      case defaultResponse(statusCode: Int, DefaultResponse)

      public var success: Status200? {
        switch self {
        case let .status200(response): return response
        default: return nil
        }
      }

      public var failure: DefaultResponse? {
        switch self {
        case let .defaultResponse(_, response): return response
        default: return nil
        }
      }

      /// either success or failure value. Success is anything in the 200..<300 status code range
      @available(*, unavailable)
      public var _obsolete_responseResult: DeprecatedResponseResult<Status200, DefaultResponse> {
        if let successValue = success {
          return .success(successValue)
        } else if let failureValue = failure {
          return .failure(failureValue)
        } else {
          fatalError("Response does not have success or failure response")
        }
      }

      public var anyResponse: Any {
        switch self {
        case let .status200(response): return response
        case let .defaultResponse(_, response): return response
        }
      }

      public var statusCode: Int {
        switch self {
        case .status200: return 200
        case let .defaultResponse(statusCode, _): return statusCode
        }
      }

      public var successful: Bool {
        switch self {
        case .status200: return true
        case .defaultResponse: return false
        }
      }

      public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
        switch statusCode {
        case 200: self = try .status200(decoder.decode(Status200.self, from: data))
        default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(DefaultResponse.self, from: data))
        }
      }

      public var description: String {
        "\(statusCode) \(successful ? "success" : "failure")"
      }

      public var debugDescription: String {
        var string = description
        let responseString = "\(anyResponse)"
        if responseString != "()" {
          string += "\n\(responseString)"
        }
        return string
      }
    }
  }
}
