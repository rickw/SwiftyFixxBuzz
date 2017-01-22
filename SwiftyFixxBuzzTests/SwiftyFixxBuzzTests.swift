//
//  SwiftyFixxBuzzTests.swift
//  SwiftyFixxBuzzTests
//
//  Created by Rick Windham on 12/11/14.
//  Copyright (c) 2014 Rick Windham. All rights reserved.
//

import UIKit
import XCTest

class SwiftyFixxBuzzTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testResult() {
        for (index, answer) in testData.enumerated() {
            XCTAssertEqual(fizzBuzz(index), answer, "answer should be '\(answer)'")
        }
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure() {
            for i in 1...1000 {
                _ = fizzBuzz(i)
            }
        }
    }
    
}
