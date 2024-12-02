# Spinetail

This is an api generated from a OpenAPI 3.0 spec with [SwagGen](https://github.com/yonaskolb/SwagGen)

## Operation

Each operation lives under the `Spinetail` namespace and within an optional tag: `Spinetail(.tagName).operationId`. If an operation doesn't have an operationId one will be generated from the path and method.

Each operation has a nested `Request` and a `Response`, as well as a static `service` property

#### Service

This is the struct that contains the static information about an operation including it's id, tag, method, pre-modified path, and authorization requirements. It has a generic `ResponseType` type which maps to the `Response` type.
You shouldn't really need to interact with this service type.

#### Request

Each request is a subclass of `APIRequest` and has an `init` with a body param if it has a body, and a `options` struct for other url and path parameters. There is also a convenience init for passing parameters directly.
The `options` and `body` structs are both mutable so they can be modified before actually sending the request.

#### Response

The response is an enum of all the possible responses the request can return. it also contains getters for the `statusCode`, whether it was `successful`, and the actual decoded optional `success` response. If the operation only has one type of failure type there is also an optional `failure` type.

## Model
Models that are sent and returned from the API are immutable classes. Each model is `Equatable` and `Codable`.

`Required` properties are non optional and non-required are optional

All properties can be passed into the initializer, with `required` properties being mandatory.

If a model has `additionalProperties` it will have a subscript to access these by string

## APIClient
The `APIClient` is used to encode, authorize, send, monitor, and decode the requests. There is a `APIClient.default` that uses the default `baseURL` otherwise a custom one can be initialized:

```swift
public init(baseURL: String, sessionManager: SessionManager = .default, defaultHeaders: [String: String] = [:], behaviours: [RequestBehaviour] = [])
```

#### APIClient properties

- `baseURL`: The base url that every request `path` will be appended to
- `behaviours`: A list of [Request Behaviours](#requestbehaviour) to add to every request
- `sessionManager`: An `Alamofire.SessionManager` that can be customized
- `defaultHeaders`: Headers that will be applied to every request
- `decodingQueue`: The `DispatchQueue` to decode responses on

#### Making a request
To make a request first initialize a [Request](#request) and then pass it to `makeRequest`. The `complete` closure will be called with an `APIResponse`

```swift
func makeRequest<T>(_ request: APIRequest<T>, behaviours: [RequestBehaviour] = [], queue: DispatchQueue = DispatchQueue.main, complete: @escaping (APIResponse<T>) -> Void) -> Request? {
```

Example request (that is not neccessarily in this api):

```swift

let getUserRequest = Spinetail.User.GetUser.Request(id: 123)
let apiClient = APIClient.default

apiClient.makeRequest(getUserRequest) { apiResponse in
    switch apiResponse {
        case .result(let apiResponseValue):
        	if let user = apiResponseValue.success {
        		print("GetUser returned user \(user)")
        	} else {
        		print("GetUser returned \(apiResponseValue)")
        	}
        case .error(let apiError):
        	print("GetUser failed with \(apiError)")
    }
}
```

Each [Request](#request) also has a `makeRequest` convenience function that uses `Spinetail.default`.

#### APIResponse
The `APIResponse` that gets passed to the completion closure contains the following properties:

- `request`: The original request
- `result`: A `Result` type either containing an `APIClientError` or the [Response](#response) of the request
- `urlRequest`: The `URLRequest` used to send the request
- `urlResponse`: The `HTTPURLResponse` that was returned by the request
- `data`: The `Data` returned by the request.
- `timeline`: The `Alamofire.Timeline` of the request which contains timing information.

#### Encoding and Decoding
Only JSON requests and responses are supported. These are encoded and decoded by `JSONEncoder` and `JSONDecoder` respectively, using Swift's `Codable` apis.
There are some options to control how invalid JSON is handled when decoding and these are available as static properties on `Spinetail`:

- `safeOptionalDecoding`: Whether to discard any errors when decoding optional properties. Defaults to `true`.
- `safeArrayDecoding`: Whether to remove invalid elements instead of throwing when decoding arrays. Defaults to `true`.

Dates are encoded and decoded differently according to the swagger date format. They use different `DateFormatter`'s that you can set.
- `date-time`
    - `DateTime.dateEncodingFormatter`: defaults to `yyyy-MM-dd'T'HH:mm:ss.Z`
    - `DateTime.dateDecodingFormatters`: an array of date formatters. The first one to decode successfully will be used
- `date`
    - `DateDay.dateFormatter`: defaults to `yyyy-MM-dd`

#### APIClientError
This is error enum that `APIResponse.result` may contain:

```swift
public enum APIClientError: Error {
    case unexpectedStatusCode(statusCode: Int, data: Data)
    case decodingError(DecodingError)
    case requestEncodingError(String)
    case validationError(String)
    case networkError(Error)
    case unknownError(Error)
}
```

#### RequestBehaviour
Request behaviours are used to modify, authorize, monitor or respond to requests. They can be added to the `APIClient.behaviours` for all requests, or they can passed into `makeRequest` for just that single request.

`RequestBehaviour` is a protocol you can conform to with each function being optional. As the behaviours must work across multiple different request types, they only have access to a typed erased `AnyRequest`.

```swift
public protocol RequestBehaviour {

    /// runs first and allows the requests to be modified. If modifying asynchronously use validate
    func modifyRequest(request: AnyRequest, urlRequest: URLRequest) -> URLRequest

    /// validates and modifies the request. complete must be called with either .success or .fail
    func validate(request: AnyRequest, urlRequest: URLRequest, complete: @escaping (RequestValidationResult) -> Void)

    /// called before request is sent
    func beforeSend(request: AnyRequest)

    /// called when request successfuly returns a 200 range response
    func onSuccess(request: AnyRequest, result: Any)

    /// called when request fails with an error. This will not be called if the request returns a known response even if the a status code is out of the 200 range
    func onFailure(request: AnyRequest, error: APIClientError)

    /// called if the request recieves a network response. This is not called if request fails validation or encoding
    func onResponse(request: AnyRequest, response: AnyResponse)
}
```

### Authorization
Each request has an optional `securityRequirement`. You can create a `RequestBehaviour` that checks this requirement and adds some form of authorization (usually via headers) in `validate` or `modifyRequest`. An alternative way is to set the `APIClient.defaultHeaders` which applies to all requests.

#### Reactive and Promises
To add support for a specific asynchronous library, just add an extension on `APIClient` and add a function that wraps the `makeRequest` function and converts from a closure based syntax to returning the object of choice (stream, future...ect)

## Models

- **ABSplit**
- **ABSplitStats**
- **ABTestOptions**
- **ABTestOptions1**
- **ABTestOptions2**
- **ABTestingOptions**
- **APIHealthStatus**
- **APIRoot**
- **AbandonedBrowseAutomation**
- **AbandonedCartAutomation**
- **AbuseComplaint**
- **AbuseComplaint1**
- **AbuseComplaints**
- **AbuseComplaints1**
- **AccountContact**
- **AccountExportsInner**
- **AddListMembers**
- **AddListMembers1**
- **AddListMembers2**
- **AddListMembers3**
- **AddWebhook**
- **Address**
- **Address1**
- **AnOptionForSignupFormStyles**
- **AuthorizedApplicationsInner**
- **AutomationCampaignSettings**
- **AutomationCampaignSettings1**
- **AutomationDelay**
- **AutomationDelay1**
- **AutomationEmails**
- **AutomationTrackingOptions**
- **AutomationTrigger**
- **AutomationTrigger1**
- **AutomationWorkflow**
- **AutomationWorkflow1**
- **AutomationWorkflowEmail**
- **AutomationWorkflowRuntimeSettings**
- **Automations**
- **Batch**
- **BatchAddRemoveListMembersToFromStaticSegment**
- **BatchDelivery**
- **BatchOperations**
- **BatchUpdateListMembers**
- **BatchWebhook**
- **BatchWebhook1**
- **BatchWebhook2**
- **BatchWebhooks**
- **BillingAddress**
- **BillingAddress1**
- **Bounces**
- **Campaign**
- **Campaign1**
- **Campaign2**
- **Campaign3**
- **CampaignA**
- **CampaignAdvice**
- **CampaignAdviceReport**
- **CampaignB**
- **CampaignContent**
- **CampaignContent1**
- **CampaignDefaults**
- **CampaignDefaults1**
- **CampaignDeliveryStatus**
- **CampaignFeedback**
- **CampaignFeedback1**
- **CampaignFeedback2**
- **CampaignFeedback3**
- **CampaignFolder**
- **CampaignFolder1**
- **CampaignFolders**
- **CampaignReport**
- **CampaignReportSummary**
- **CampaignReportSummary1**
- **CampaignReportSummary2**
- **CampaignReportSummary3**
- **CampaignReports**
- **CampaignReports1**
- **CampaignSettings**
- **CampaignSettings1**
- **CampaignSettings2**
- **CampaignSettings3**
- **CampaignSettings4**
- **CampaignSettings5**
- **CampaignSocialCard**
- **CampaignSubReports**
- **CampaignTrackingOptions**
- **CampaignTrackingOptions1**
- **Campaigns**
- **CapsuleCRMTracking**
- **CapsuleCRMTracking1**
- **CapsuleCRMTracking2**
- **CartLines**
- **Carts**
- **ChimpChatter**
- **ClickDetailMember**
- **ClickDetailMembers**
- **ClickDetailReport**
- **ClickSummary**
- **Clicks**
- **Clicks1Inner**
- **Clicks1Inner1**
- **CollectionAuthorization**
- **CollectionOfContentForListSignupForms**
- **CollectionOfConversationMessages**
- **CollectionOfElementStyleForListSignupForms**
- **CollectionOfEvents**
- **CollectionOfMemberActivityEvents**
- **CollectionOfMergeFields**
- **CollectionOfNotes**
- **CollectionOfSegments**
- **CollectionOfTags**
- **CombinationsInner**
- **Conditions**
- **Conditions1**
- **Conditions2**
- **ConnectedSite**
- **ConnectedSite1**
- **ConnectedSite2**
- **ConnectedSites**
- **Contact**
- **ContactCounts**
- **Conversation**
- **ConversationMessage**
- **CreateAnAccountExport**
- **Customers**
- **DailyClicksAndVisitsData**
- **DailyListActivity**
- **DailySendingDays**
- **DomainPerformance**
- **ECommerceCart**
- **ECommerceCart1**
- **ECommerceCart2**
- **ECommerceCartLineItem**
- **ECommerceCartLineItem1**
- **ECommerceCartLineItem2**
- **ECommerceCustomer**
- **ECommerceCustomer1**
- **ECommerceCustomer2**
- **ECommerceCustomer3**
- **ECommerceCustomer4**
- **ECommerceOrder**
- **ECommerceOrder1**
- **ECommerceOrder2**
- **ECommerceOrderLineItem**
- **ECommerceOrderLineItem1**
- **ECommerceOrderLineItem2**
- **ECommerceProduct**
- **ECommerceProduct1**
- **ECommerceProduct2**
- **ECommerceProductImage**
- **ECommerceProductImage1**
- **ECommerceProductImage2**
- **ECommerceProductVariant**
- **ECommerceProductVariant1**
- **ECommerceProductVariant2**
- **ECommercePromoCode**
- **ECommercePromoCode1**
- **ECommercePromoCode2**
- **ECommercePromoRule**
- **ECommercePromoRule1**
- **ECommercePromoRule2**
- **ECommerceReport**
- **ECommerceReport1**
- **ECommerceStore**
- **ECommerceStore1**
- **ECommerceStore2**
- **ECommerceStores**
- **EcommerceProductImages**
- **EcommerceProductVariants**
- **EcommerceStats**
- **EepurlActivity**
- **EmailActivity**
- **EmailClient**
- **EmailClients**
- **EmailDomain**
- **ErrorsInner**
- **ErrorsInner1**
- **Event**
- **Events**
- **Events1**
- **Events2**
- **ExactMatches**
- **FacebookLikes**
- **FileManager**
- **FileManagerFolders**
- **Forwards**
- **GalleryFile**
- **GalleryFile1**
- **GalleryFile2**
- **GalleryFolder**
- **GalleryFolder1**
- **GetAccountExports200Response**
- **GetActivityFeedChimpChatter200Response**
- **GetAllFacebookAds200Response**
- **GetAllFacebookAds200ResponseFacebookAdsInner**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf1**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Audience**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceEmailSource**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecs**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsInterestsInner**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2AudienceTargetingSpecsLocations**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Budget**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Channel**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Content**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2ContentAttachmentsInner**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Feedback**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf2Site**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOf3**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummary**
- **GetAllFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerce**
- **GetAllLandingPages200Response**
- **GetAuthorizedApps200Response**
- **GetAutomations200Response**
- **GetAutomationsIdEmailsIdQueue200Response**
- **GetCampaigns200Response**
- **GetFacebookAdsId200Response**
- **GetReportingFacebookAds200Response**
- **GetReportingFacebookAds200ResponseFacebookAdsInner**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOf**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivity**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityClicksInner**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityImpressionsInner**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfAudienceActivityRevenueInner**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummary**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryAverageOrderAmount**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryEcommerce**
- **GetReportingFacebookAds200ResponseFacebookAdsInnerAllOfReportSummaryExtendedAt**
- **GetReportingFacebookAdsId200Response**
- **GetReportingLandingPages200Response**
- **GetReportingSurveys200Response**
- **GetReportingSurveysIdQuestions200Response**
- **GetReportingSurveysIdQuestionsIdAnswers200Response**
- **GetReportingSurveysIdResponses200Response**
- **GetReportsIdEcommerceProductActivity200Response**
- **GetReportsIdEcommerceProductActivity200ResponseProductsInner**
- **Goal**
- **GroupA**
- **GroupB**
- **GrowthHistory**
- **Hours**
- **IndustryStats**
- **IndustryStats1**
- **Interest**
- **Interest1**
- **InterestCategory**
- **InterestCategory1**
- **InterestGroupings**
- **Interests**
- **ItemsInner**
- **LandingPage**
- **LandingPage1**
- **LandingPage2**
- **LandingPageContent**
- **LandingPageReport**
- **LandingPageReportEcommerce**
- **LandingPageReportTimeseries**
- **LastMessage**
- **List**
- **List1**
- **List10**
- **List2**
- **List3**
- **List4**
- **List5**
- **List6**
- **List7**
- **List8**
- **List9**
- **ListActivity**
- **ListContact**
- **ListContact1**
- **ListContact2**
- **ListLocation**
- **ListLocations**
- **ListMembers**
- **ListMembers1**
- **ListMembers2**
- **ListSignupForms**
- **ListStats**
- **ListWebhooks**
- **ListsInner**
- **Location**
- **Location1**
- **Location2**
- **Location3**
- **MarketingPermission**
- **MarketingPermission1**
- **MemberActivity**
- **MemberActivity1**
- **MemberActivity2**
- **MemberActivityEvents**
- **MemberActivityEvents1**
- **MemberNotes**
- **MemberNotes1**
- **MemberTag**
- **MemberTags**
- **Members**
- **MembersToAddRemoveToFromaStaticSegment**
- **MembersToSubscribeUnsubscribeToFromaListInBatch**
- **MergeField**
- **MergeField1**
- **MergeField2**
- **MergeField3**
- **MergeFieldOptions**
- **MergeFieldOptions1**
- **MergeFieldOptions2**
- **Notes**
- **OpenActivity**
- **OpenDetailReport**
- **OpenLocations**
- **Opens**
- **Operations**
- **OptionsInner**
- **OrderLines**
- **Orders**
- **Orders1**
- **Outreach**
- **Outreach1**
- **PartialMatches**
- **PostBatchesRequest**
- **PostCampaignsIdActionsScheduleRequest**
- **PostCampaignsIdActionsTestRequest**
- **PostListsIdSegmentsIdMembersRequest**
- **ProblemDetailDocument**
- **Products**
- **PromoCodes**
- **PromoRules**
- **PromosInner**
- **PromosInner1**
- **RSSOptions**
- **RSSOptions1**
- **RSSOptions2**
- **RSSOptions3**
- **Referrer**
- **RemovedSubscribers**
- **ResourceLink**
- **Response**
- **ResultsInner**
- **SalesforceCRMTracking**
- **SalesforceCRMTracking1**
- **Script**
- **Script1**
- **SegmentMembers**
- **SegmentOptions**
- **SegmentOptions1**
- **SegmentOptions2**
- **SendChecklist**
- **SendingSchedule**
- **SendingSchedule1**
- **SentTo**
- **ShareReport**
- **ShippingAddress**
- **ShippingAddress1**
- **SignupForm**
- **SignupForm1**
- **SignupFormHeaderOptions**
- **Sources**
- **Sources1**
- **Statistics**
- **SubscriberInAutomationQueue**
- **SubscriberInAutomationQueue1**
- **SubscriberInAutomationQueue2**
- **SubscriberInCustomerJourneysAudience**
- **SubscriberList**
- **SubscriberList1**
- **SubscriberList2**
- **SubscriberLists**
- **SubscriberRemovedFromAutomationWorkflow**
- **SubscriberStats**
- **SubscriberStats1**
- **SurveyQuestionAnswer**
- **SurveyQuestionReport**
- **SurveyReport**
- **SurveyRespondents**
- **SurveyResponse**
- **Tag**
- **TagSearchResults**
- **TagsInner**
- **TagsInner1**
- **TagsInner2**
- **TemplateContent**
- **TemplateContent1**
- **TemplateDefaultContent**
- **TemplateFolder**
- **TemplateFolder1**
- **TemplateFolders**
- **TemplateInstance**
- **TemplateInstance1**
- **Templates**
- **TimeseriesInner**
- **TimewarpStatsInner**
- **TrackedConversations**
- **TrackingSettings**
- **TwitterStats**
- **TwitterStatus**
- **UniqueVisitsInner**
- **Unsubscribes**
- **UpdateInformationAboutaSpecificWorkflowEmail**
- **UploadArchive**
- **VariateContentsInner**
- **VariateContentsInner1**
- **VerifiedDomains**
- **VerifiedDomains1**
- **VerifiedDomains2**
- **VerifyaDomainForSending**
- **VisitsInner**
- **VisitsInner1**
- **WeeklyClicksAndVisitsData**

## Requests

- **Spinetail.AccountExport**
	- **GetAccountExportId**: GET `/account-exports/{export_id}`
- **Spinetail.AccountExports**
	- **GetAccountExports**: GET `/account-exports`
	- **PostAccountExport**: POST `/account-exports`
- **Spinetail.ActivityFeed**
	- **GetActivityFeedChimpChatter**: GET `/activity-feed/chimp-chatter`
- **Spinetail.AuthorizedApps**
	- **GetAuthorizedApps**: GET `/authorized-apps`
	- **GetAuthorizedAppsId**: GET `/authorized-apps/{app_id}`
- **Spinetail.Automations**
	- **ArchiveAutomations**: POST `/automations/{workflow_id}/actions/archive`
	- **DeleteAutomationsIdEmailsId**: DELETE `/automations/{workflow_id}/emails/{workflow_email_id}`
	- **GetAutomations**: GET `/automations`
	- **GetAutomationsId**: GET `/automations/{workflow_id}`
	- **GetAutomationsIdEmails**: GET `/automations/{workflow_id}/emails`
	- **GetAutomationsIdEmailsId**: GET `/automations/{workflow_id}/emails/{workflow_email_id}`
	- **GetAutomationsIdEmailsIdQueue**: GET `/automations/{workflow_id}/emails/{workflow_email_id}/queue`
	- **GetAutomationsIdEmailsIdQueueId**: GET `/automations/{workflow_id}/emails/{workflow_email_id}/queue/{subscriber_hash}`
	- **GetAutomationsIdRemovedSubscribers**: GET `/automations/{workflow_id}/removed-subscribers`
	- **GetAutomationsIdRemovedSubscribersId**: GET `/automations/{workflow_id}/removed-subscribers/{subscriber_hash}`
	- **PatchAutomationEmailWorkflowId**: PATCH `/automations/{workflow_id}/emails/{workflow_email_id}`
	- **PostAutomations**: POST `/automations`
	- **PostAutomationsIdActionsPauseAllEmails**: POST `/automations/{workflow_id}/actions/pause-all-emails`
	- **PostAutomationsIdActionsStartAllEmails**: POST `/automations/{workflow_id}/actions/start-all-emails`
	- **PostAutomationsIdEmailsIdActionsPause**: POST `/automations/{workflow_id}/emails/{workflow_email_id}/actions/pause`
	- **PostAutomationsIdEmailsIdActionsStart**: POST `/automations/{workflow_id}/emails/{workflow_email_id}/actions/start`
	- **PostAutomationsIdEmailsIdQueue**: POST `/automations/{workflow_id}/emails/{workflow_email_id}/queue`
	- **PostAutomationsIdRemovedSubscribers**: POST `/automations/{workflow_id}/removed-subscribers`
- **Spinetail.Batches**
	- **DeleteBatchesId**: DELETE `/batches/{batch_id}`
	- **GetBatches**: GET `/batches`
	- **GetBatchesId**: GET `/batches/{batch_id}`
	- **PostBatches**: POST `/batches`
- **Spinetail.BatchWebhooks**
	- **DeleteBatchWebhookId**: DELETE `/batch-webhooks/{batch_webhook_id}`
	- **GetBatchWebhook**: GET `/batch-webhooks/{batch_webhook_id}`
	- **GetBatchWebhooks**: GET `/batch-webhooks`
	- **PatchBatchWebhooks**: PATCH `/batch-webhooks/{batch_webhook_id}`
	- **PostBatchWebhooks**: POST `/batch-webhooks`
- **Spinetail.CampaignFolders**
	- **DeleteCampaignFoldersId**: DELETE `/campaign-folders/{folder_id}`
	- **GetCampaignFolders**: GET `/campaign-folders`
	- **GetCampaignFoldersId**: GET `/campaign-folders/{folder_id}`
	- **PatchCampaignFoldersId**: PATCH `/campaign-folders/{folder_id}`
	- **PostCampaignFolders**: POST `/campaign-folders`
- **Spinetail.Campaigns**
	- **DeleteCampaignsId**: DELETE `/campaigns/{campaign_id}`
	- **DeleteCampaignsIdFeedbackId**: DELETE `/campaigns/{campaign_id}/feedback/{feedback_id}`
	- **GetCampaigns**: GET `/campaigns`
	- **GetCampaignsId**: GET `/campaigns/{campaign_id}`
	- **GetCampaignsIdContent**: GET `/campaigns/{campaign_id}/content`
	- **GetCampaignsIdFeedback**: GET `/campaigns/{campaign_id}/feedback`
	- **GetCampaignsIdFeedbackId**: GET `/campaigns/{campaign_id}/feedback/{feedback_id}`
	- **GetCampaignsIdSendChecklist**: GET `/campaigns/{campaign_id}/send-checklist`
	- **PatchCampaignsId**: PATCH `/campaigns/{campaign_id}`
	- **PatchCampaignsIdFeedbackId**: PATCH `/campaigns/{campaign_id}/feedback/{feedback_id}`
	- **PostCampaigns**: POST `/campaigns`
	- **PostCampaignsIdActionsCancelSend**: POST `/campaigns/{campaign_id}/actions/cancel-send`
	- **PostCampaignsIdActionsCreateResend**: POST `/campaigns/{campaign_id}/actions/create-resend`
	- **PostCampaignsIdActionsPause**: POST `/campaigns/{campaign_id}/actions/pause`
	- **PostCampaignsIdActionsReplicate**: POST `/campaigns/{campaign_id}/actions/replicate`
	- **PostCampaignsIdActionsResume**: POST `/campaigns/{campaign_id}/actions/resume`
	- **PostCampaignsIdActionsSchedule**: POST `/campaigns/{campaign_id}/actions/schedule`
	- **PostCampaignsIdActionsSend**: POST `/campaigns/{campaign_id}/actions/send`
	- **PostCampaignsIdActionsTest**: POST `/campaigns/{campaign_id}/actions/test`
	- **PostCampaignsIdActionsUnschedule**: POST `/campaigns/{campaign_id}/actions/unschedule`
	- **PostCampaignsIdFeedback**: POST `/campaigns/{campaign_id}/feedback`
	- **PutCampaignsIdContent**: PUT `/campaigns/{campaign_id}/content`
- **Spinetail.ConnectedSites**
	- **DeleteConnectedSitesId**: DELETE `/connected-sites/{connected_site_id}`
	- **GetConnectedSites**: GET `/connected-sites`
	- **GetConnectedSitesId**: GET `/connected-sites/{connected_site_id}`
	- **PostConnectedSites**: POST `/connected-sites`
	- **PostConnectedSitesIdActionsVerifyScriptInstallation**: POST `/connected-sites/{connected_site_id}/actions/verify-script-installation`
- **Spinetail.Conversations**
	- **GetConversations**: GET `/conversations`
	- **GetConversationsId**: GET `/conversations/{conversation_id}`
	- **GetConversationsIdMessages**: GET `/conversations/{conversation_id}/messages`
	- **GetConversationsIdMessagesId**: GET `/conversations/{conversation_id}/messages/{message_id}`
- **Spinetail.CustomerJourneys**
	- **PostCustomerJourneysJourneysIdStepsIdActionsTrigger**: POST `/customer-journeys/journeys/{journey_id}/steps/{step_id}/actions/trigger`
- **Spinetail.Ecommerce**
	- **DeleteEcommerceStoresId**: DELETE `/ecommerce/stores/{store_id}`
	- **DeleteEcommerceStoresIdCartsId**: DELETE `/ecommerce/stores/{store_id}/carts/{cart_id}`
	- **DeleteEcommerceStoresIdCartsLinesId**: DELETE `/ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}`
	- **DeleteEcommerceStoresIdCustomersId**: DELETE `/ecommerce/stores/{store_id}/customers/{customer_id}`
	- **DeleteEcommerceStoresIdOrdersId**: DELETE `/ecommerce/stores/{store_id}/orders/{order_id}`
	- **DeleteEcommerceStoresIdOrdersIdLinesId**: DELETE `/ecommerce/stores/{store_id}/orders/{order_id}/lines/{line_id}`
	- **DeleteEcommerceStoresIdProductsId**: DELETE `/ecommerce/stores/{store_id}/products/{product_id}`
	- **DeleteEcommerceStoresIdProductsIdImagesId**: DELETE `/ecommerce/stores/{store_id}/products/{product_id}/images/{image_id}`
	- **DeleteEcommerceStoresIdProductsIdVariantsId**: DELETE `/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}`
	- **DeleteEcommerceStoresIdPromocodesId**: DELETE `/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}`
	- **DeleteEcommerceStoresIdPromorulesId**: DELETE `/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}`
	- **GetEcommerceOrders**: GET `/ecommerce/orders`
	- **GetEcommerceStores**: GET `/ecommerce/stores`
	- **GetEcommerceStoresId**: GET `/ecommerce/stores/{store_id}`
	- **GetEcommerceStoresIdCarts**: GET `/ecommerce/stores/{store_id}/carts`
	- **GetEcommerceStoresIdCartsId**: GET `/ecommerce/stores/{store_id}/carts/{cart_id}`
	- **GetEcommerceStoresIdCartsIdLines**: GET `/ecommerce/stores/{store_id}/carts/{cart_id}/lines`
	- **GetEcommerceStoresIdCartsIdLinesId**: GET `/ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}`
	- **GetEcommerceStoresIdCustomers**: GET `/ecommerce/stores/{store_id}/customers`
	- **GetEcommerceStoresIdCustomersId**: GET `/ecommerce/stores/{store_id}/customers/{customer_id}`
	- **GetEcommerceStoresIdOrders**: GET `/ecommerce/stores/{store_id}/orders`
	- **GetEcommerceStoresIdOrdersId**: GET `/ecommerce/stores/{store_id}/orders/{order_id}`
	- **GetEcommerceStoresIdOrdersIdLines**: GET `/ecommerce/stores/{store_id}/orders/{order_id}/lines`
	- **GetEcommerceStoresIdOrdersIdLinesId**: GET `/ecommerce/stores/{store_id}/orders/{order_id}/lines/{line_id}`
	- **GetEcommerceStoresIdProducts**: GET `/ecommerce/stores/{store_id}/products`
	- **GetEcommerceStoresIdProductsId**: GET `/ecommerce/stores/{store_id}/products/{product_id}`
	- **GetEcommerceStoresIdProductsIdImages**: GET `/ecommerce/stores/{store_id}/products/{product_id}/images`
	- **GetEcommerceStoresIdProductsIdImagesId**: GET `/ecommerce/stores/{store_id}/products/{product_id}/images/{image_id}`
	- **GetEcommerceStoresIdProductsIdVariants**: GET `/ecommerce/stores/{store_id}/products/{product_id}/variants`
	- **GetEcommerceStoresIdProductsIdVariantsId**: GET `/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}`
	- **GetEcommerceStoresIdPromocodes**: GET `/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes`
	- **GetEcommerceStoresIdPromocodesId**: GET `/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}`
	- **GetEcommerceStoresIdPromorules**: GET `/ecommerce/stores/{store_id}/promo-rules`
	- **GetEcommerceStoresIdPromorulesId**: GET `/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}`
	- **PatchEcommerceStoresId**: PATCH `/ecommerce/stores/{store_id}`
	- **PatchEcommerceStoresIdCartsId**: PATCH `/ecommerce/stores/{store_id}/carts/{cart_id}`
	- **PatchEcommerceStoresIdCartsIdLinesId**: PATCH `/ecommerce/stores/{store_id}/carts/{cart_id}/lines/{line_id}`
	- **PatchEcommerceStoresIdCustomersId**: PATCH `/ecommerce/stores/{store_id}/customers/{customer_id}`
	- **PatchEcommerceStoresIdOrdersId**: PATCH `/ecommerce/stores/{store_id}/orders/{order_id}`
	- **PatchEcommerceStoresIdOrdersIdLinesId**: PATCH `/ecommerce/stores/{store_id}/orders/{order_id}/lines/{line_id}`
	- **PatchEcommerceStoresIdProductsId**: PATCH `/ecommerce/stores/{store_id}/products/{product_id}`
	- **PatchEcommerceStoresIdProductsIdImagesId**: PATCH `/ecommerce/stores/{store_id}/products/{product_id}/images/{image_id}`
	- **PatchEcommerceStoresIdProductsIdVariantsId**: PATCH `/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}`
	- **PatchEcommerceStoresIdPromocodesId**: PATCH `/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes/{promo_code_id}`
	- **PatchEcommerceStoresIdPromorulesId**: PATCH `/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}`
	- **PostEcommerceStores**: POST `/ecommerce/stores`
	- **PostEcommerceStoresIdCarts**: POST `/ecommerce/stores/{store_id}/carts`
	- **PostEcommerceStoresIdCartsIdLines**: POST `/ecommerce/stores/{store_id}/carts/{cart_id}/lines`
	- **PostEcommerceStoresIdCustomers**: POST `/ecommerce/stores/{store_id}/customers`
	- **PostEcommerceStoresIdOrders**: POST `/ecommerce/stores/{store_id}/orders`
	- **PostEcommerceStoresIdOrdersIdLines**: POST `/ecommerce/stores/{store_id}/orders/{order_id}/lines`
	- **PostEcommerceStoresIdProducts**: POST `/ecommerce/stores/{store_id}/products`
	- **PostEcommerceStoresIdProductsIdImages**: POST `/ecommerce/stores/{store_id}/products/{product_id}/images`
	- **PostEcommerceStoresIdProductsIdVariants**: POST `/ecommerce/stores/{store_id}/products/{product_id}/variants`
	- **PostEcommerceStoresIdPromocodes**: POST `/ecommerce/stores/{store_id}/promo-rules/{promo_rule_id}/promo-codes`
	- **PostEcommerceStoresIdPromorules**: POST `/ecommerce/stores/{store_id}/promo-rules`
	- **PutEcommerceStoresIdCustomersId**: PUT `/ecommerce/stores/{store_id}/customers/{customer_id}`
	- **PutEcommerceStoresIdProductsIdVariantsId**: PUT `/ecommerce/stores/{store_id}/products/{product_id}/variants/{variant_id}`
- **Spinetail.FacebookAds**
	- **GetAllFacebookAds**: GET `/facebook-ads`
	- **GetFacebookAdsId**: GET `/facebook-ads/{outreach_id}`
- **Spinetail.FileManager**
	- **DeleteFileManagerFilesId**: DELETE `/file-manager/files/{file_id}`
	- **DeleteFileManagerFoldersId**: DELETE `/file-manager/folders/{folder_id}`
	- **GetFileManagerFiles**: GET `/file-manager/files`
	- **GetFileManagerFilesId**: GET `/file-manager/files/{file_id}`
	- **GetFileManagerFolders**: GET `/file-manager/folders`
	- **GetFileManagerFoldersId**: GET `/file-manager/folders/{folder_id}`
	- **PatchFileManagerFilesId**: PATCH `/file-manager/files/{file_id}`
	- **PatchFileManagerFoldersId**: PATCH `/file-manager/folders/{folder_id}`
	- **PostFileManagerFiles**: POST `/file-manager/files`
	- **PostFileManagerFolders**: POST `/file-manager/folders`
- **Spinetail.LandingPages**
	- **DeleteLandingPageId**: DELETE `/landing-pages/{page_id}`
	- **GetAllLandingPages**: GET `/landing-pages`
	- **GetLandingPageId**: GET `/landing-pages/{page_id}`
	- **GetLandingPageIdContent**: GET `/landing-pages/{page_id}/content`
	- **PatchLandingPageId**: PATCH `/landing-pages/{page_id}`
	- **PostAllLandingPages**: POST `/landing-pages`
	- **PostLandingPageIdActionsPublish**: POST `/landing-pages/{page_id}/actions/publish`
	- **PostLandingPageIdActionsUnpublish**: POST `/landing-pages/{page_id}/actions/unpublish`
- **Spinetail.Lists**
	- **DeleteListsId**: DELETE `/lists/{list_id}`
	- **DeleteListsIdInterestCategoriesId**: DELETE `/lists/{list_id}/interest-categories/{interest_category_id}`
	- **DeleteListsIdInterestCategoriesIdInterestsId**: DELETE `/lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}`
	- **DeleteListsIdMembersId**: DELETE `/lists/{list_id}/members/{subscriber_hash}`
	- **DeleteListsIdMembersIdNotesId**: DELETE `/lists/{list_id}/members/{subscriber_hash}/notes/{note_id}`
	- **DeleteListsIdMergeFieldsId**: DELETE `/lists/{list_id}/merge-fields/{merge_id}`
	- **DeleteListsIdSegmentsId**: DELETE `/lists/{list_id}/segments/{segment_id}`
	- **DeleteListsIdSegmentsIdMembersId**: DELETE `/lists/{list_id}/segments/{segment_id}/members/{subscriber_hash}`
	- **DeleteListsIdWebhooksId**: DELETE `/lists/{list_id}/webhooks/{webhook_id}`
	- **GetListMemberTags**: GET `/lists/{list_id}/members/{subscriber_hash}/tags`
	- **GetLists**: GET `/lists`
	- **GetListsId**: GET `/lists/{list_id}`
	- **GetListsIdAbuseReports**: GET `/lists/{list_id}/abuse-reports`
	- **GetListsIdAbuseReportsId**: GET `/lists/{list_id}/abuse-reports/{report_id}`
	- **GetListsIdActivity**: GET `/lists/{list_id}/activity`
	- **GetListsIdClients**: GET `/lists/{list_id}/clients`
	- **GetListsIdGrowthHistory**: GET `/lists/{list_id}/growth-history`
	- **GetListsIdGrowthHistoryId**: GET `/lists/{list_id}/growth-history/{month}`
	- **GetListsIdInterestCategories**: GET `/lists/{list_id}/interest-categories`
	- **GetListsIdInterestCategoriesId**: GET `/lists/{list_id}/interest-categories/{interest_category_id}`
	- **GetListsIdInterestCategoriesIdInterests**: GET `/lists/{list_id}/interest-categories/{interest_category_id}/interests`
	- **GetListsIdInterestCategoriesIdInterestsId**: GET `/lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}`
	- **GetListsIdLocations**: GET `/lists/{list_id}/locations`
	- **GetListsIdMembers**: GET `/lists/{list_id}/members`
	- **GetListsIdMembersId**: GET `/lists/{list_id}/members/{subscriber_hash}`
	- **GetListsIdMembersIdActivity**: GET `/lists/{list_id}/members/{subscriber_hash}/activity`
	- **GetListsIdMembersIdActivityFeed**: GET `/lists/{list_id}/members/{subscriber_hash}/activity-feed`
	- **GetListsIdMembersIdEvents**: GET `/lists/{list_id}/members/{subscriber_hash}/events`
	- **GetListsIdMembersIdGoals**: GET `/lists/{list_id}/members/{subscriber_hash}/goals`
	- **GetListsIdMembersIdNotes**: GET `/lists/{list_id}/members/{subscriber_hash}/notes`
	- **GetListsIdMembersIdNotesId**: GET `/lists/{list_id}/members/{subscriber_hash}/notes/{note_id}`
	- **GetListsIdMergeFields**: GET `/lists/{list_id}/merge-fields`
	- **GetListsIdMergeFieldsId**: GET `/lists/{list_id}/merge-fields/{merge_id}`
	- **GetListsIdSegmentsId**: GET `/lists/{list_id}/segments/{segment_id}`
	- **GetListsIdSegmentsIdMembers**: GET `/lists/{list_id}/segments/{segment_id}/members`
	- **GetListsIdSignupForms**: GET `/lists/{list_id}/signup-forms`
	- **GetListsIdSurveys**: GET `/lists/{list_id}/surveys`
	- **GetListsIdSurveysId**: GET `/lists/{list_id}/surveys/{survey_id}`
	- **GetListsIdWebhooks**: GET `/lists/{list_id}/webhooks`
	- **GetListsIdWebhooksId**: GET `/lists/{list_id}/webhooks/{webhook_id}`
	- **PatchListsId**: PATCH `/lists/{list_id}`
	- **PatchListsIdInterestCategoriesId**: PATCH `/lists/{list_id}/interest-categories/{interest_category_id}`
	- **PatchListsIdInterestCategoriesIdInterestsId**: PATCH `/lists/{list_id}/interest-categories/{interest_category_id}/interests/{interest_id}`
	- **PatchListsIdMembersId**: PATCH `/lists/{list_id}/members/{subscriber_hash}`
	- **PatchListsIdMembersIdNotesId**: PATCH `/lists/{list_id}/members/{subscriber_hash}/notes/{note_id}`
	- **PatchListsIdMergeFieldsId**: PATCH `/lists/{list_id}/merge-fields/{merge_id}`
	- **PatchListsIdSegmentsId**: PATCH `/lists/{list_id}/segments/{segment_id}`
	- **PatchListsIdWebhooksId**: PATCH `/lists/{list_id}/webhooks/{webhook_id}`
	- **PostListMemberEvents**: POST `/lists/{list_id}/members/{subscriber_hash}/events`
	- **PostListMemberTags**: POST `/lists/{list_id}/members/{subscriber_hash}/tags`
	- **PostLists**: POST `/lists`
	- **PostListsId**: POST `/lists/{list_id}`
	- **PostListsIdInterestCategories**: POST `/lists/{list_id}/interest-categories`
	- **PostListsIdInterestCategoriesIdInterests**: POST `/lists/{list_id}/interest-categories/{interest_category_id}/interests`
	- **PostListsIdMembers**: POST `/lists/{list_id}/members`
	- **PostListsIdMembersHashActionsDeletePermanent**: POST `/lists/{list_id}/members/{subscriber_hash}/actions/delete-permanent`
	- **PostListsIdMembersIdNotes**: POST `/lists/{list_id}/members/{subscriber_hash}/notes`
	- **PostListsIdMergeFields**: POST `/lists/{list_id}/merge-fields`
	- **PostListsIdSegments**: POST `/lists/{list_id}/segments`
	- **PostListsIdSegmentsId**: POST `/lists/{list_id}/segments/{segment_id}`
	- **PostListsIdSegmentsIdMembers**: POST `/lists/{list_id}/segments/{segment_id}/members`
	- **PostListsIdSignupForms**: POST `/lists/{list_id}/signup-forms`
	- **PostListsIdWebhooks**: POST `/lists/{list_id}/webhooks`
	- **PreviewASegment**: GET `/lists/{list_id}/segments`
	- **PutListsIdMembersId**: PUT `/lists/{list_id}/members/{subscriber_hash}`
	- **SearchTagsByName**: GET `/lists/{list_id}/tag-search`
- **Spinetail.Ping**
	- **GetPing**: GET `/ping`
- **Spinetail.Reporting**
	- **GetReportingFacebookAds**: GET `/reporting/facebook-ads`
	- **GetReportingFacebookAdsId**: GET `/reporting/facebook-ads/{outreach_id}`
	- **GetReportingFacebookAdsIdEcommerceProductActivity**: GET `/reporting/facebook-ads/{outreach_id}/ecommerce-product-activity`
	- **GetReportingLandingPages**: GET `/reporting/landing-pages`
	- **GetReportingLandingPagesId**: GET `/reporting/landing-pages/{outreach_id}`
	- **GetReportingSurveys**: GET `/reporting/surveys`
	- **GetReportingSurveysId**: GET `/reporting/surveys/{outreach_id}`
	- **GetReportingSurveysIdQuestions**: GET `/reporting/surveys/{outreach_id}/questions`
	- **GetReportingSurveysIdQuestionsId**: GET `/reporting/surveys/{outreach_id}/questions/{question_id}`
	- **GetReportingSurveysIdQuestionsIdAnswers**: GET `/reporting/surveys/{outreach_id}/questions/{question_id}/answers`
	- **GetReportingSurveysIdResponses**: GET `/reporting/surveys/{outreach_id}/responses`
	- **GetReportingSurveysIdResponsesId**: GET `/reporting/surveys/{outreach_id}/responses/{response_id}`
- **Spinetail.Reports**
	- **GetReports**: GET `/reports`
	- **GetReportsId**: GET `/reports/{campaign_id}`
	- **GetReportsIdAbuseReportsId**: GET `/reports/{campaign_id}/abuse-reports`
	- **GetReportsIdAbuseReportsIdId**: GET `/reports/{campaign_id}/abuse-reports/{report_id}`
	- **GetReportsIdAdvice**: GET `/reports/{campaign_id}/advice`
	- **GetReportsIdClickDetails**: GET `/reports/{campaign_id}/click-details`
	- **GetReportsIdClickDetailsId**: GET `/reports/{campaign_id}/click-details/{link_id}`
	- **GetReportsIdClickDetailsIdMembers**: GET `/reports/{campaign_id}/click-details/{link_id}/members`
	- **GetReportsIdClickDetailsIdMembersId**: GET `/reports/{campaign_id}/click-details/{link_id}/members/{subscriber_hash}`
	- **GetReportsIdDomainPerformance**: GET `/reports/{campaign_id}/domain-performance`
	- **GetReportsIdEcommerceProductActivity**: GET `/reports/{campaign_id}/ecommerce-product-activity`
	- **GetReportsIdEepurl**: GET `/reports/{campaign_id}/eepurl`
	- **GetReportsIdEmailActivity**: GET `/reports/{campaign_id}/email-activity`
	- **GetReportsIdEmailActivityId**: GET `/reports/{campaign_id}/email-activity/{subscriber_hash}`
	- **GetReportsIdLocations**: GET `/reports/{campaign_id}/locations`
	- **GetReportsIdOpenDetails**: GET `/reports/{campaign_id}/open-details`
	- **GetReportsIdOpenDetailsIdMembersId**: GET `/reports/{campaign_id}/open-details/{subscriber_hash}`
	- **GetReportsIdSentTo**: GET `/reports/{campaign_id}/sent-to`
	- **GetReportsIdSentToId**: GET `/reports/{campaign_id}/sent-to/{subscriber_hash}`
	- **GetReportsIdSubReportsId**: GET `/reports/{campaign_id}/sub-reports`
	- **GetReportsIdUnsubscribed**: GET `/reports/{campaign_id}/unsubscribed`
	- **GetReportsIdUnsubscribedId**: GET `/reports/{campaign_id}/unsubscribed/{subscriber_hash}`
- **Spinetail.Root**
	- **GetRoot**: GET `/`
- **Spinetail.SearchCampaigns**
	- **GetSearchCampaigns**: GET `/search-campaigns`
- **Spinetail.SearchMembers**
	- **GetSearchMembers**: GET `/search-members`
- **Spinetail.Surveys**
	- **PostListsIdSurveysIdActionsPublish**: POST `/lists/{list_id}/surveys/{survey_id}/actions/publish`
	- **PostListsIdSurveysIdActionsUnpublish**: POST `/lists/{list_id}/surveys/{survey_id}/actions/unpublish`
- **Spinetail.TemplateFolders**
	- **DeleteTemplateFoldersId**: DELETE `/template-folders/{folder_id}`
	- **GetTemplateFolders**: GET `/template-folders`
	- **GetTemplateFoldersId**: GET `/template-folders/{folder_id}`
	- **PatchTemplateFoldersId**: PATCH `/template-folders/{folder_id}`
	- **PostTemplateFolders**: POST `/template-folders`
- **Spinetail.Templates**
	- **DeleteTemplatesId**: DELETE `/templates/{template_id}`
	- **GetTemplates**: GET `/templates`
	- **GetTemplatesId**: GET `/templates/{template_id}`
	- **GetTemplatesIdDefaultContent**: GET `/templates/{template_id}/default-content`
	- **PatchTemplatesId**: PATCH `/templates/{template_id}`
	- **PostTemplates**: POST `/templates`
- **Spinetail.VerifiedDomains**
	- **CreateVerifiedDomain**: POST `/verified-domains`
	- **DeleteVerifiedDomain**: DELETE `/verified-domains/{domain_name}`
	- **GetVerifiedDomain**: GET `/verified-domains/{domain_name}`
	- **GetVerifiedDomains**: GET `/verified-domains`
	- **VerifyDomain**: POST `/verified-domains/{domain_name}/actions/verify`
