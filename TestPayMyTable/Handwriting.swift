//
//  Handwriting.swift
//  TestPayMyTable
//
//  Created by Gauthier et Cathine on 21/12/2016.
//  Copyright © 2016 Gauthier. All rights reserved.
//

import Foundation

// Keys
let HandwritingIdKey    = "id"
let HandwritingTitleKey = "title"

struct Handwriting {
    let id      : String
    let title   : String
    
    init?(json: NSDictionary) {
        
        guard let HandwritingId = json[HandwritingIdKey] as? String else { return nil }
        
        self.id = HandwritingId
        
        guard let HandwritingTitle = json[HandwritingTitleKey] as? String else { return nil }
        
        self.title = HandwritingTitle
        
    }
    
    init(id : String, title : String) {
        self.id = id
        self.title = title
    }
    
}
