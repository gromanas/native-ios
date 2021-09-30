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
//        let myCartScreen = MyCartScreen(app: app)
//        let loginScreen = LoginScreen(app: app)
        
        catalogScreen.assertMoreButtonExists()
        catalogScreen.assertAllCatalogItemsText()
        catalogScreen.clickOnSpecificCatalogItem()
        productDetailsScreen.assertProductPriceExists()
        productDetailsScreen.assertAddToCartButtonExists()
        productDetailsScreen.clickAddToCartButton()
//        productDetailsScreen.clickCartButton()
//        myCartScreen.assertremoveItemExists()
//        myCartScreen.myCartPriceExists()
//        myCartScreen.proccedToCheckOutButtonExists()
//        myCartScreen.clickProceedToCheckoutButton()
//        loginScreen.asserLoginHeaderExists()
//        loginScreen.assertuserNameLabelExists()
//        loginScreen.assertpasswordLabelExists()
//        loginScreen.assertloginButtonExists()
    }
}
