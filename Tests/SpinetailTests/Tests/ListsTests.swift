import Prch
@testable import Spinetail
import XCTest

#if canImport(FoundationNetworking)
  import FoundationNetworking

#endif

final class ListsTests: XCTestCase {
  let existingEmailAddress = "669408F7A804430BAF74878BFCEBD128@brightdigit.com"
  static var listID: String!
  static var interestID: String?
  static var api: SpinetailAPI!

  override class func setUp() {
    let settings = Settings.parseAll()

    listID = settings.listID
    interestID = settings.interestID
    api = settings.apiKey.flatMap(SpinetailAPI.init(apiKey:))
  }

  func upsertEmailAddress(
    _ emailAddress: String,
    withFirstName firstName: String?,
    andLastName lastName: String?,
    withInterestID interestID: String?,
    andTimestamp useTimestamp: Bool
  ) async throws -> Bool? {
    let client = MailchimpService(api: Self.api)
    // Client(api: Self.api, session: URLSession.shared)

    let getMember = Lists.GetListsIdMembersId(
      listId: Self.listID,
      subscriberHash: emailAddress
    )

    let member: ListMembers?
    let interested: Bool

    do {
      member = try await client.request(getMember)
      if let interestID = interestID {
        interested = member?.interests?[interestID] ?? false
      } else {
        interested = true
      }
    } catch let RequestError.invalidStatusCode(statusCode) where statusCode == 404 {
      member = nil
      interested = false
    }

    let mergeFields = { firstName, lastName -> [String: String]? in
      let value = [
        "FNAME": firstName,
        "LNAME": lastName
      ].compactMapValues {
        $0
      }
      return value.isEmpty ? nil : value
    }(firstName, lastName)

//    let member: Lists.GetListsIdMembersId.Response.Status200?
//
//    do {
//      member = try client.requestSync(getMember, timeout: .distantFuture)
//      if let interestID = interestID {
//        interested = member?.interests?[interestID] ?? false
//      } else {
//        interested = true
//      }
//    } catch let error as DefaultResponseError<Lists.GetListsIdMembersId.Response> {
//      guard error.statusCode == 404 else {
//        throw error
//      }
//      interested = false
//      member = nil
//    }

    let interests: [String: Bool] = interestID.map { [$0: true] } ?? [:]
    guard !interested else {
      return nil
    }
    if let subscriberHash = member?.id {
      let patch = Lists.PatchListsIdMembersId(body: .init(emailAddress: emailAddress, emailType: nil, interests: interests, mergeFields: mergeFields), listId: Self.listID, subscriberHash: subscriberHash)
      _ = try await client.request(patch)
      return false
    } else {
      let post = Lists.PostListsIdMembers(body: .init(emailAddress: emailAddress, status: .subscribed, interests: interests, mergeFields: mergeFields, timestampOpt: useTimestamp ? .init() : nil, timestampSignup: useTimestamp ? .init() : nil), listId: Self.listID)
      _ = try await client.request(post)
      return true
    }
  }

  func testUpsertExistingWithInterestIDWithoutTimestamp() async throws {
    let actual = try await upsertEmailAddress(existingEmailAddress, withFirstName: nil, andLastName: nil, withInterestID: Self.interestID, andTimestamp: false)
    XCTAssertNil(actual)
  }

  func testUpsertExistingWithoutInterestIDWithoutTimestamp() async throws {
    let actual = try await upsertEmailAddress(existingEmailAddress, withFirstName: nil, andLastName: nil, withInterestID: nil, andTimestamp: false)
    XCTAssertNil(actual)
  }

  func testUpsertNewWithInterestIDWithoutTimestamp() async throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actual = try await upsertEmailAddress(emailAddress, withFirstName: nil, andLastName: nil, withInterestID: Self.interestID, andTimestamp: false)
    XCTAssertEqual(actual, true)
  }

  func testUpsertNewThenWithInterestIDWithoutTimestamp() async throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actualCreate = try await upsertEmailAddress(emailAddress, withFirstName: nil, andLastName: nil, withInterestID: nil, andTimestamp: false)
    XCTAssertEqual(actualCreate, true)
    let actualUpdate = try await upsertEmailAddress(emailAddress, withFirstName: nil, andLastName: nil, withInterestID: Self.interestID, andTimestamp: false)
    XCTAssertEqual(actualUpdate, false)
  }

  func testUpsertExistingWithInterestIDandNameWithoutTimestamp() async throws {
    let actual = try await upsertEmailAddress(existingEmailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: Self.interestID, andTimestamp: false)
    XCTAssertNil(actual)
  }

  func testUpsertExistingWithoutInterestIDandNameWithoutTimestamp() async throws {
    let actual = try await upsertEmailAddress(existingEmailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: nil, andTimestamp: false)
    XCTAssertNil(actual)
  }

  func testUpsertNewWithInterestIDandNameWithoutTimestamp() async throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actual = try await upsertEmailAddress(emailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: Self.interestID, andTimestamp: false)
    XCTAssertEqual(actual, true)
  }

  func testUpsertNewThenWithInterestIDandNameWithoutTimestamp() async throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actualCreate = try await upsertEmailAddress(emailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: nil, andTimestamp: false)
    XCTAssertEqual(actualCreate, true)
    let actualUpdate = try await upsertEmailAddress(emailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: Self.interestID, andTimestamp: false)
    XCTAssertEqual(actualUpdate, false)
  }

  func testUpsertExistingWithInterestIDWithTimestamp() async throws {
    let actual = try await upsertEmailAddress(existingEmailAddress, withFirstName: nil, andLastName: nil, withInterestID: Self.interestID, andTimestamp: true)
    XCTAssertNil(actual)
  }

  func testUpsertExistingWithoutInterestIDWithTimestamp() async throws {
    let actual = try await upsertEmailAddress(existingEmailAddress, withFirstName: nil, andLastName: nil, withInterestID: nil, andTimestamp: true)
    XCTAssertNil(actual)
  }

  func testUpsertNewWithInterestIDWithTimestamp() async throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actual = try await upsertEmailAddress(emailAddress, withFirstName: nil, andLastName: nil, withInterestID: Self.interestID, andTimestamp: true)
    XCTAssertEqual(actual, true)
  }

  func testUpsertNewThenWithInterestIDWithTimestamp() async throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actualCreate = try await upsertEmailAddress(emailAddress, withFirstName: nil, andLastName: nil, withInterestID: nil, andTimestamp: true)
    XCTAssertEqual(actualCreate, true)
    let actualUpdate = try await upsertEmailAddress(emailAddress, withFirstName: nil, andLastName: nil, withInterestID: Self.interestID, andTimestamp: true)
    XCTAssertEqual(actualUpdate, false)
  }

  func testUpsertExistingWithInterestIDandNameWithTimestamp() async throws {
    let actual = try await upsertEmailAddress(existingEmailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: Self.interestID, andTimestamp: true)
    XCTAssertNil(actual)
  }

  func testUpsertExistingWithoutInterestIDandNameWithTimestamp() async throws {
    let actual = try await upsertEmailAddress(existingEmailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: nil, andTimestamp: true)
    XCTAssertNil(actual)
  }

  func testUpsertNewWithInterestIDandNameWithTimestamp() async throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actual = try await upsertEmailAddress(emailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: Self.interestID, andTimestamp: true)
    XCTAssertEqual(actual, true)
  }

  func testUpsertNewThenWithInterestIDandNameWithTimestamp() async throws {
    let emailAddress = String.randomEmailAddress(withDomain: "brightdigit.com")
    let actualCreate = try await upsertEmailAddress(emailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: nil, andTimestamp: true)
    XCTAssertEqual(actualCreate, true)
    let actualUpdate = try await upsertEmailAddress(emailAddress, withFirstName: UUID().uuidString, andLastName: UUID().uuidString, withInterestID: Self.interestID, andTimestamp: true)
    XCTAssertEqual(actualUpdate, false)
  }
}
