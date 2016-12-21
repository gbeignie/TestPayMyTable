//
//  HandwritingImageQuery.swift
//  TestPayMyTable
//
//  Created by Gauthier et Cathine on 18/12/2016.
//  Copyright © 2016 Gauthier. All rights reserved.
//

import Foundation
import Alamofire

class HandwritingImageQuery {
    
    struct Constants {
        static let handwritingImageBaseURL = "https://api.handwriting.io"
        static let handwritingImageRenderURL = "/render/png"
        
        static let handwritingImageIdParameter = "handwriting_id"
        static let handwritingImageTextParameter = "text"
        static let handwritingImageWidthParameter = "width"
        static let handwritingImageHeightParameter = "height"
        
        static let user = "MT9V1KQW1V8A5FXF"
        static let password = "TP63F27MM8A01EBQ"
    }
    
    func renderTextInImage(text : String, width : CGFloat, handwriting : Handwriting?, completion: (StandardResult<UIImage>) -> Void) -> Void {
        
        let url = Constants.handwritingImageBaseURL + Constants.handwritingImageRenderURL
        
        let parameters = [
            Constants.handwritingImageIdParameter : handwriting == nil ? "2D5QW0F80001" : handwriting!.id,
            Constants.handwritingImageTextParameter : text,
            Constants.handwritingImageWidthParameter : String(width) + "px",
            Constants.handwritingImageHeightParameter : "auto"
        ]
        
        Alamofire.request(.GET, url, parameters: parameters).authenticate(user: Constants.user, password: Constants.password).responseData { (response : Response<NSData, NSError>) in
            
            guard response.result.isSuccess else {
                completion(.FAILURE(response.result.error))
                return
            }

            guard let data = response.data else {
                completion(.FAILURE(PMTError.ServerError))
                return
            }
            guard let image : UIImage = UIImage(data: data) else {
                do {
                    let jsonObject = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
                    guard let json = jsonObject as? [String: AnyObject] else {
                        throw PMTError.ServerError
                    }
                    throw self.getErrorMessageFromJson(json)

                }
                catch {
                    completion(.FAILURE(error))

                    return
                }
            }
            
            completion(.SUCCESS(image))
        }
    }
    
    private func getErrorMessageFromJson(json : [String: AnyObject]) -> ErrorType {

        guard let errorsArray = json["errors"] as? [[String: AnyObject]] else { return PMTError.ServerError }
        
        guard errorsArray.count > 0 else { return PMTError.ServerError }
        let firstError = errorsArray[0]
        guard let errorMessage = firstError["error"] as? String else { return PMTError.ServerError }
        
        return NSError(domain: "serverError", code: -1, userInfo: [NSLocalizedDescriptionKey: errorMessage])
        
    }
        
}
