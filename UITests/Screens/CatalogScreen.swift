//
//  File.swift
//  UITests
//
//  Created by Elias Giannoulis on 30/9/21.
//
import Foundation
import XCTest
class CatalogScreen {
    
    let app: XCUIApplication
    let moreButton: XCUIElement
    let backPackStaticText: XCUIElement
    let bikeLightStaticText: XCUIElement
    let boltTshirt: XCUIElement
    let fleeceTshirt: XCUIElement
    init(app: XCUIApplication) {
        self.app = app
        moreButton = app.staticTexts["More"]
        backPackStaticText = app.staticTexts["Sauce Lab Back Packs"]
        bikeLightStaticText = app.staticTexts["Sauce Lab Bike Light"]
        boltTshirt = app.staticTexts["Sauce Lab Bolt T-Shirt"]
        fleeceTshirt = app.staticTexts["Sauce Lab Fleece T-Shirt"]
    }
    
    func assertAllCatalogItemsText() {
        XCTAssertTrue(backPackStaticText.exists)
        XCTAssertTrue(bikeLightStaticText.exists)
        XCTAssertTrue(boltTshirt.exists)
        XCTAssertTrue(fleeceTshirt.exists)
    }
    
    func assertMoreButtonExists() {
        XCTAssertTrue(moreButton.exists)
    }
    
    func clickOnSpecificCatalogItem() {
        backPackStaticText.tap()
    }
    
    
}
