//
// CustomerJourneysAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class CustomerJourneysAPI {
    /**
     Customer Journeys API trigger for a contact

     - parameter body: (body)  
     - parameter journeyId: (path) The id for the Journey. 
     - parameter stepId: (path) The id for the Step. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func postCustomerJourneysJourneysIdStepsIdActionsTrigger(body: SubscriberInCustomerJourneysAudience, journeyId: Int, stepId: Int, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        postCustomerJourneysJourneysIdStepsIdActionsTriggerWithRequestBuilder(body: body, journeyId: journeyId, stepId: stepId).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     Customer Journeys API trigger for a contact
     - POST /customer-journeys/journeys/{journey_id}/steps/{step_id}/actions/trigger

     - BASIC:
       - type: http
       - name: basicAuth
     - examples: [{contentType=application/json, example={ }}]
     - parameter body: (body)  
     - parameter journeyId: (path) The id for the Journey. 
     - parameter stepId: (path) The id for the Step. 

     - returns: RequestBuilder<Void> 
     */
    open class func postCustomerJourneysJourneysIdStepsIdActionsTriggerWithRequestBuilder(body: SubscriberInCustomerJourneysAudience, journeyId: Int, stepId: Int) -> RequestBuilder<Void> {
        var path = "/customer-journeys/journeys/{journey_id}/steps/{step_id}/actions/trigger"
        let journeyIdPreEscape = "\(journeyId)"
        let journeyIdPostEscape = journeyIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{journey_id}", with: journeyIdPostEscape, options: .literal, range: nil)
        let stepIdPreEscape = "\(stepId)"
        let stepIdPostEscape = stepIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{step_id}", with: stepIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
