//
//  File.swift
//  UITests
//
//  Created by Elias Giannoulis on 30/9/21.
//
import Foundation
import XCTest
class ProductDetailsScreen {
    
    let app: XCUIApplication
    let productPrice: XCUIElement
    let addToCartButton: XCUIElement
    let cartButton: XCUIElement
    
    init(app: XCUIApplication) {
        self.app = app
        productPrice = app.staticTexts["More"]
        addToCartButton = app.buttons["Add To Cart"]
        cartButton = app.staticTexts["Cart"]
    }
    
    
    func assertAddToCartButtonExists() {
        XCTAssertTrue(addToCartButton.exists)
    }
    
    func assertProductPriceExists() {
        XCTAssertTrue(productPrice.exists)
    }
    
    func clickAddToCartButton() {
        addToCartButton.tap()
    }
    
    func clickCartButton() {
        cartButton.tap()
    }
    
}






