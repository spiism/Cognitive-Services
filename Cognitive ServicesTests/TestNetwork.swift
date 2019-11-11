//
//  TestNetwork.swift
//  Cognitive ServicesTests
//
//  Created by Vina on 12/11/19.
//  Copyright © 2019 Unitec. All rights reserved.
//

import XCTest


class TestNetwork: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample1() {
        let homeInteractor: HomeInteractor = HomeInteractor();
        var didInitlized = homeInteractor.didSdkInitilized
        homeInteractor.initSDK()

        sleep(2)

        didInitlized = homeInteractor.didSdkInitilized
        XCTAssertTrue(didInitlized)


    }
}
