//
//  FizzBuzz.swift
//  SwiftyFixxBuzz
//
//  Created by Rick Windham on 12/12/14.
//  Copyright (c) 2014 Rick Windham. All rights reserved.
//

import Foundation

// Putting this here makes testing easier...

func fizzBuzz(_ row:Int) -> String {
    let result = (row % 3, row % 5)
    switch result {
    case (0, 0):
        return "\(row) FizzBuzz"
    case (0, _):
        return "\(row) Fizz"
    case (_, 0):
        return "\(row) Buzz"
    default:
        return "\(row)"
    }
}
