//
//  App_Dev_Test_ProjectTests.swift
//  App Dev Test ProjectTests
//
//  Created by noelsamonte on 7/20/23.
//

import XCTest

final class App_Dev_Test_ProjectTests: XCTestCase {

    func testSuccesDateFormat() {
        let format: String = "MM/dd/yyyy h:mm aa"
        let date_str_input: String = "07/21/2023 12:30 AM"
        let date_input: Date = date_str_input.string2Date(format: format)!
        let date_to_test: String = date_input.dateFormatter(format: format)
        
        XCTAssertEqual(date_to_test, date_str_input)
    }
    
    func testFailedDateFormat() {
        let format: String = "MM/dd/yyyy h:mm aa"
        let format_failed: String = "MM/dd/yy h:mm aa"
        let date_str_input: String = "07/21/2023 12:30 AM"
        let date_input: Date = date_str_input.string2Date(format: format)!
        let date_to_test: String = date_input.dateFormatter(format: format_failed)
        
        XCTAssertEqual(date_to_test, date_str_input)
    }
    
    func testSuccessString2Date() {
        let format: String = "MM/dd/yyyy h:mm aa"
        let date_str_input: String = "07/21/2023 12:30 AM"
        XCTAssertNotNil(date_str_input.string2Date(format: format)!)
    }
    
    func testFailedString2Date() {
        let format: String = "MM/dd/yyyy h:mm aa"
        let date_str_input: String = "TEST"
        
        XCTAssertNotNil(date_str_input.string2Date(format: format) ?? nil)
    }

}
