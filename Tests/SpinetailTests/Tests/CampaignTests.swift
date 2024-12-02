// import Prch
@testable import Spinetail
import XCTest

#if canImport(FoundationNetworking)
  import FoundationNetworking
#endif

final class CampaignTests: XCTestCase {
  static var listID: String!
  // static var interestID: String!
  static var api: SpinetailAPI!

  override class func setUp() {
    let settings = Settings.parseAll()

    listID = settings.listID
    // interestID = settings.interestID
    api = settings.apiKey.flatMap(SpinetailAPI.init(apiKey:))
  }

  func testCampaign() async throws {
    let client = MailchimpService(api: CampaignTests.api, session: URLSession.shared)

    let campaigns = try await client.request(Campaigns.GetCampaigns()).campaigns

    let count = campaigns!.count

    let date = Date()
    let template = try await client.request(Templates.PostTemplates(body: .init(html: "test email - \(date)", name: "test email - \(date)")))

    guard let templateID = template.id else {
      XCTAssertNil(template.id)
      return
    }

    let settings: CampaignSettings3 =
      .init(
        fromName: "Leo",
        replyTo: "leogdion+mailchimpdev@brightdigit.com",
        subjectLine: "Hello World",
        templateId: templateID
      )

    let body: Campaign1 = .init(type: .regular, recipients: .init(listId: Self.listID), settings: settings)
    let campaign = try await client.request(Campaigns.PostCampaigns(body: body))
//      .createCampaign(
//      withTemplateID: templateID,
//      fromName: "Leo",
//      replyTo: "leogdion+mailchimpdev@brightdigit.com",
//      subjectLine: "Hello World",
//      toListID: Self.listID
//    )

    guard let campaignID = campaign.id else {
      XCTAssertNil(campaign.id)
      return
    }

    try await client.request(Campaigns.PostCampaignsIdActionsSend(campaignId: campaignID))

    let newCount = try await client.request(Campaigns.GetCampaigns()).campaigns?.count

    XCTAssertEqual(count + 1, newCount)
//
//    try client.requestSync(
//      Campaigns.PostCampaignsIdActionsSend.Request(campaignId: campaignID)
//    )
  }
}
