//
//  LoginUITest.swift
//  SwiftUIDemoUITests
//
//  Created by Mindaugas Balakauskas on 20/01/2023.
//

import XCTest

final class LoginUITest: XCTestCase {
    
    private var app: XCUIApplication!

    override func setUpWithError() throws {
        app = XCUIApplication()
        app.launch()
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        app = nil
    }
    func testAllUIElementsExists() {
        
        let timeout = 3
        let email = app.textFields["E-mail"]
        let password = app.secureTextFields["Password"]
        let loginButton = app.buttons["Login"]
        
        XCTAssertTrue(app.staticTexts["Welcome"].exists)
        XCTAssertTrue(app.textFields["E-mail"].exists)
        XCTAssertTrue(app.secureTextFields["Password"].exists)
        XCTAssertTrue(app.buttons["Login"].exists)
        
        XCTAssertTrue(email.waitForExistence(timeout: TimeInterval(timeout)))
        XCTAssertTrue(password.waitForExistence(timeout: TimeInterval (timeout)))
        email.tap()
        email.typeText("Hello")
        
        password.tap()
        password.typeText("123 efkjfselk")
        
        XCTAssertTrue(loginButton.exists)
        XCTAssertTrue(loginButton.isEnabled)
        
        //test Login button clicked
        
        loginButton.tap()
        
        XCTAssertTrue(app.staticTexts["Second Screen Title"].exists) //to check if next screen appiered
        
    }
    
//    func testExample() throws {
//
//        let app = XCUIApplication()
//        app.launch()
//
//
//    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
