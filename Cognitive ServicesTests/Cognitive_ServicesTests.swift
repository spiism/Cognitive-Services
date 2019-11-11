//
//  Cognitive_ServicesTests.swift
//  Cognitive ServicesTests
//
//  Created by Vina on 12/11/19.
//  Copyright © 2019 Unitec. All rights reserved.
//

import XCTest

class Cognitive_ServicesTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
  

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure(metrics: [XCTCPUMetric()]) {
            // Put the code whose CPU performance you want to measure here.
        }
    }
    
    func testForViewcontroller() {
            let _ = UIViewController()
          }
    
    func testNetwork(){
        let URL = NSURL(string: "http://google.com/")!
        let expectation = expectation(description: "GET \(URL)")
        RestApiManager.sharedInstance.postLogin(testInfo) { (json, statusCode) in
            XCTAssert(statusCode == 200, "statusCode is not matching the server data") // Here StatusCode is accessible inside the block
            expectation.fulfill()
        }//PostLogin call ends
        waitForExpectations(timeout: 5){ error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
            }
        }//Wait block end
    }// end function
}
