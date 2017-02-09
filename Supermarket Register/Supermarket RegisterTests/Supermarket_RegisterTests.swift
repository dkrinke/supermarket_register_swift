//
//  Supermarket_RegisterTests.swift
//  Supermarket RegisterTests
//
//  Created by iostest on 2/3/17.
//  Copyright © 2017 Gannett. All rights reserved.
//

import XCTest
@testable import Supermarket_Register

class Supermarket_RegisterTests: XCTestCase {
    
    var calcTotalTestValues:[String: Double]=["A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88;YRT6-72AS-K736-L4AR;TQ4C-VV6T-75ZX-1RMR;65P1-UDGM-XH2M-LQW2":28.21,
                                              "A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88;YRT6-72AS-K736-L4AR;TQ4C-VV6T-75ZX-1RMR":21.80,
                                              "A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88;YRT6-72AS-K736-L4AR":14.43,
                                              "A12T-4GH7-QPL9-3N4M;A12T-4GH7-QPL9-3N4M;A12T-4GH7-QPL9-3N4M":11.29,
                                              "A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88":12.66,
                                              "A12T-4GH7-QPL9-3N4M":3.76]
    var calcTaxTestValues:[String: Double]=["A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88;YRT6-72AS-K736-L4AR;TQ4C-VV6T-75ZX-1RMR;65P1-UDGM-XH2M-LQW2":2.27,
                                            "A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88;YRT6-72AS-K736-L4AR;TQ4C-VV6T-75ZX-1RMR":1.75,
                                            "A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88;YRT6-72AS-K736-L4AR":1.16,
                                            "A12T-4GH7-QPL9-3N4M;A12T-4GH7-QPL9-3N4M;A12T-4GH7-QPL9-3N4M":0.91,
                                            "A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88":1.02,
                                            "A12T-4GH7-QPL9-3N4M":0.03]
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testCreateProductRecord() {
        
        let product = ProductRecord(name: "Cereal", code: "A12T-4GH7-QPL9-3N4M", price: 3.46)
        
        XCTAssert(product.getCode == "A12T-4GH7-QPL9-3N4M", "Pass")
        XCTAssert(product.getPrice == 3.46, "Pass")
        XCTAssert(product.getName == "Cereal", "Pass")
    }
    
    func testProductRecordHandlerInit() {
        
        let productHandler = ProductRecordHandler()
        XCTAssertNotNil(productHandler, "Pass")
    }
    
    func testCalcTotal() {
        
        let productHandler = ProductRecordHandler()
        productHandler.initProductRecords()
        
        for key in calcTotalTestValues.keys
        {
            var result = productHandler.calcTotal(products: key)
            XCTAssertEqual(result[1], calcTotalTestValues[key], key)
        }
    }
    
    //    func testCalculateTax() {
    //
    //        let productHandler = ProductRecordHandler()
    //        productHandler.initProductRecords()
    //
    //        for key in calcTaxTestValues.keys
    //        {
    //            var result = productHandler.calcTotal(products: key)
    //            XCTAssertEqual(result[0], calcTaxTestValues[key], key)
    //        }
    //        
    //    }
}
