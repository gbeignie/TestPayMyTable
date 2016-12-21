//
//  HandwritingsJsonParser.swift
//  TestPayMyTable
//
//  Created by Gauthier et Cathine on 21/12/2016.
//  Copyright © 2016 Gauthier. All rights reserved.
//

import Foundation

class HandwritingsJsonParser
{
    
    static func parse(json: [NSDictionary]) -> [Handwriting] {
        return json.flatMap({ Handwriting(json: $0) })
    }
    
    
}
