//
//  StandardResult.swift
//  TestPayMyTable
//
//  Created by Gauthier et Cathine on 18/12/2016.
//  Copyright © 2016 Gauthier. All rights reserved.
//

import UIKit

import Foundation

enum StandardResult<T> {
    case SUCCESS(T)
    case FAILURE(ErrorType?)
}
