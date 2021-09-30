//
//  UITests.swift
//  UITests
//
//  Created by Elias Giannoulis on 29/9/21.
//
import Foundation
import XCTest
class CatalogPurchase : TestBase {

    func testProductCompleteOrder() throws {

        let catalogScreen = CatalogScreen(app: app)
        let productDetailsScreen = ProductDetailsScreen(app: app)

        catalogScreen.assertMoreButtonExists()
        catalogScreen.assertAllCatalogItemsText()
        catalogScreen.clickOnSpecificCatalogItem()
        productDetailsScreen.assertProductPriceExists()
        productDetailsScreen.assertAddToCartButtonExists()
        productDetailsScreen.clickAddToCartButton()
    }
}
