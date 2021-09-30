//
//  UITests.swift
//  UITests
//
//  Created by Giorgos Romanas on 30/9/21.
//

import XCTest

class UITests: XCTestCase {


    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
