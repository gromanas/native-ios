//
//  TestBase.swift
//  UITests
//
//  Created by Giorgos Romanas on 30/9/21.
//

import Foundation
import XCTest

class TestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    override func setUp(){
        super.setUp()
        continueAfterFailure = false
        app.launch()
    
    }
    

    override func tearDownWithError() throws {
        super.tearDown()
        app.terminate()
        
    }
    
    func AsyncAssert(_ element: XCUIElement){
        let isElementExist = element.waitForExistence(timeout: 10)
        
        if isElementExist{
            XCTAssertTrue(element.exists)
        }
    }
}
