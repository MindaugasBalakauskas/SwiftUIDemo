//
//  ListViewUITest.swift
//  SwiftUIDemoUITests
//
//  Created by Mindaugas Balakauskas on 20/01/2023.
//

import XCTest

final class ListViewUITest: XCTestCase {

    override func setUpWithError() throws {
        let app = XCUIApplication()
        app.launch()
        continueAfterFailure = false

        
    }

    override func tearDownWithError() throws {
        
    }

    func testAllUIElementsExistsInSecondScreen() {
        
        let app = XCUIApplication()
        
        
        //Navigation to second screen
        
        app.buttons["Login"].tap()
        
        // Second screen
        
        XCTAssertTrue(app.staticTexts["Second Screen Title"].exists)
        
        let collectionViewsQuery = app.collectionViews
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Weekdays"]/*[[".cells.staticTexts[\"Weekdays\"]",".staticTexts[\"Weekdays\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Monday"]/*[[".cells.buttons[\"Monday\"]",".buttons[\"Monday\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssertTrue(collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["Months"]/*[[".cells.staticTexts[\"Months\"]",".staticTexts[\"Months\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        
        let backButton = app.navigationBars["_TtGC7SwiftUI32NavigationStackHosting"].buttons["Back"]
        XCTAssertTrue(backButton.exists)
        
        let janButton = collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Jan"]/*[[".cells.buttons[\"Jan\"]",".buttons[\"Jan\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssertTrue(janButton.exists)
        
        let tabBar = app.tabBars["Tab Bar"]
        XCTAssertTrue(tabBar.exists)
        
        let listViewButton = tabBar.buttons["List View"]
        XCTAssertTrue(listViewButton.exists)
    }
    func testNavigationFlowOfTheSecondScreen() {
   
        
        let app = XCUIApplication()
        app.buttons["Login"].tap()
        
        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Monday"]/*[[".cells.buttons[\"Monday\"]",".buttons[\"Monday\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.webViews.webViews.webViews/*@START_MENU_TOKEN@*/.staticTexts["Welcome to "]/*[[".otherElements[\"Wikipedia, the free encyclopedia\"]",".otherElements[\"main\"]",".otherElements[\"Welcome to Wikipedia\"].staticTexts[\"Welcome to \"]",".staticTexts[\"Welcome to \"]"],[[[-1,3],[-1,2],[-1,1,2],[-1,0,1]],[[-1,3],[-1,2],[-1,1,2]],[[-1,3],[-1,2]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let backButton = app.navigationBars["_TtGC7SwiftUI32NavigationStackHosting"].buttons["Back"]
        backButton.tap()
        
        let janButton = collectionViewsQuery/*@START_MENU_TOKEN@*/.buttons["Jan"]/*[[".cells.buttons[\"Jan\"]",".buttons[\"Jan\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        janButton.tap()
        app.scrollViews.otherElements.buttons["Jan"].tap()
        backButton.tap()
        backButton.tap()
        
        
        let tabBar = app.tabBars["Tab Bar"]
        tabBar.buttons["Fruit List View"].tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/.staticTexts["FRUITS LIST"]/*[[".cells.staticTexts[\"FRUITS LIST\"]",".staticTexts[\"FRUITS LIST\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        tabBar.buttons["List View"].tap()
        backButton.tap()
                
        
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
