//
//  File.swift
//  UITests
//
//  Created by Elias Giannoulis on 30/9/21.
//
import Foundation
import XCTest
class LoginScreen {
    
    let app: XCUIApplication
    let loginHeader: XCUIElement
    let userNameLabel: XCUIElement
    let passwordLabel: XCUIElement
    let loginButton: XCUIElement
    init(app: XCUIApplication) {
        self.app = app
        loginHeader = app.staticTexts["Login"]
        userNameLabel = app.staticTexts["User Name"]
        passwordLabel = app.staticTexts["Password"]
        loginButton = app.buttons["Login"]
    }
    
    
    func asserLoginHeaderExists() {
        XCTAssertTrue(loginHeader.exists)
    }
    
    func assertuserNameLabelExists() {
        XCTAssertTrue(userNameLabel.exists)
    }
    
    func assertpasswordLabelExists() {
        XCTAssertTrue(passwordLabel.exists)
    }
    
    func assertloginButtonExists() {
        XCTAssertTrue(loginButton.exists)
    }
    
    func clickLoginButton() {
        loginButton.tap()
    }
    
}
