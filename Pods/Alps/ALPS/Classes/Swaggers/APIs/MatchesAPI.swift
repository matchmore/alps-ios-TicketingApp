//
// MatchesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire



open class MatchesAPI: APIBase {
    /**
     Get matches for the device
     
     - parameter deviceId: (path) The id (UUID) of the device. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getMatches(deviceId: String, completion: @escaping ((_ data: Matches?,_ error: Error?) -> Void)) {
        getMatchesWithRequestBuilder(deviceId: deviceId).execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }


    /**
     Get matches for the device
     - GET /devices/{deviceId}/matches
     - examples: [{contentType=application/json, example=""}]
     
     - parameter deviceId: (path) The id (UUID) of the device. 

     - returns: RequestBuilder<Matches> 
     */
    open class func getMatchesWithRequestBuilder(deviceId: String) -> RequestBuilder<Matches> {
        var path = "/devices/{deviceId}/matches"
        path = path.replacingOccurrences(of: "{deviceId}", with: "\(deviceId)", options: .literal, range: nil)
        let URLString = AlpsAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Matches>.Type = AlpsAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}