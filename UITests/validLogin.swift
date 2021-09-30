//
//  validLogin.swift
//  UITests
//
//  Created by Giorgos Romanas on 30/9/21.
//

import Foundation
import XCTest

class ValidLoginTest: TestBase {

func testValidLogin() throws {
    // UI tests must launch the application that they test.
    
    app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 4).children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .button).element.tap()
    app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element(boundBy: 7).children(matching: .button).element.tap()
    app.scrollViews.otherElements/*@START_MENU_TOKEN@*/.staticTexts["bob@example.com"]/*[[".buttons[\"bob@example.com\"].staticTexts[\"bob@example.com\"]",".staticTexts[\"bob@example.com\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    app.buttons["Login"].staticTexts["Login"].tap()
   
    XCTAssert(app.staticTexts["Products"].exists);
    
    
}
}

