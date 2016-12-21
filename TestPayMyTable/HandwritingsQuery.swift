//
//  HandwritingsQuery.swift
//  TestPayMyTable
//
//  Created by Gauthier et Cathine on 21/12/2016.
//  Copyright © 2016 Gauthier. All rights reserved.
//

import Foundation
import Alamofire

class HandwritingsQuery {
    
    struct Constants {
        static let catalogRequestURL = "https://api.handwriting.io/handwritings"
        static let user = "MT9V1KQW1V8A5FXF"
        static let password = "TP63F27MM8A01EBQ"
    }
    
    func retrieveHandwritingList(completion: (StandardResult<[Handwriting]>) ->Void) -> Void {
        
        Alamofire.request(.GET, Constants.catalogRequestURL).authenticate(user: Constants.user, password: Constants.password).responseJSON { (response: Response<AnyObject, NSError>) in
            
            guard let jsonArray = response.result.value as? [NSDictionary] else {
                completion(.FAILURE(PMTError.ServerError))
                return
            }
            
            let list = HandwritingsJsonParser.parse(jsonArray)
            completion(.SUCCESS(list))
            
        }
    }
    
}
