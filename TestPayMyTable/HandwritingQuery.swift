//
//  HandwritingQuery.swift
//  TestPayMyTable
//
//  Created by Gauthier et Cathine on 18/12/2016.
//  Copyright © 2016 Gauthier. All rights reserved.
//

import Foundation
import Alamofire

class HandwritingQuery {
    
    struct Constants {
        static let handwritingBaseURL = "https://api.handwriting.io"
        static let handwritingRenderURL = "/render/png"
        
        static let handwritingIdParameter = "handwriting_id"
        static let handwritingTextParameter = "text"
        static let handwritingWidthParameter = "width"
        static let handwritingHeightParameter = "height"
        
        static let user = "MT9V1KQW1V8A5FXF"
        static let password = "TP63F27MM8A01EBQ"
    }
    
    func renderTextInImage(text : String, width : CGFloat, completion: (StandardResult<UIImage>) -> Void) -> Void {
        
        let url = Constants.handwritingBaseURL + Constants.handwritingRenderURL
        
        let parameters = [
            Constants.handwritingIdParameter : "2D5QW0F80001",
            Constants.handwritingTextParameter : text,
            Constants.handwritingWidthParameter : String(width) + "px",
            Constants.handwritingHeightParameter : "auto"
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
                completion(.FAILURE(PMTError.ServerError))
                return
            }
            
            completion(.SUCCESS(image))
        }
    }
    
    func retrieveCatalogList() -> Void {
        
    }
        
}
