//
//  File.swift
//  UITests
//
//  Created by Elias Giannoulis on 30/9/21.
//
import Foundation
import XCTest
class MyCartScreen {
    
    let app: XCUIApplication
    let removeItemButton: XCUIElement
    let proccedToCheckOutButton: XCUIElement
    let myCartPrice: XCUIElement
    init(app: XCUIApplication) {
        self.app = app
        removeItemButton = app.staticTexts["Remove Item"]
        proccedToCheckOutButton = app.buttons["Proceed to Checkout"]
        myCartPrice = app.staticTexts["$29.99"]
    }
    
    func assertremoveItemExists() {
        XCTAssertTrue(removeItemButton.exists)
    }
    
    func proccedToCheckOutButtonExists() {
        XCTAssertTrue(proccedToCheckOutButton.exists)
    }
    
    func myCartPriceExists() {
        XCTAssertTrue(myCartPrice.exists)
    }
    
    func clickProceedToCheckoutButton() {
        proccedToCheckOutButton.tap()
    }
}
