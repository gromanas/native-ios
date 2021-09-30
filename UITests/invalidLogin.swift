//
//  invalidLogin.swift
//  UITests
//
//  Created by Giorgos Romanas on 30/9/21.
//

import Foundation
import XCTest

class InvalidLoginTest: TestBase {

func testInValidLogin() throws {
    // UI tests must launch the application that they test.
    app.windows.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 4).children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .button).element.tap()
    app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element(boundBy: 7).children(matching: .button).element.tap()
    
    let scrollViewsQuery = app.scrollViews
    scrollViewsQuery.otherElements.containing(.staticText, identifier:"Login").children(matching: .other).element(boundBy: 0).children(matching: .textField).element
    
    let loginElement = scrollViewsQuery.otherElements.containing(.staticText, identifier:"Login").element

    app.buttons["Login"].staticTexts["Login"].tap()
    XCTAssert(app.alerts["Validation Error!"].exists);
    
    loginElement.tap()
    
}
}
