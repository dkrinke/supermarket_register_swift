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
    
    var calcTestValues:[String: Array<Double>]=["A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88;YRT6-72AS-K736-L4AR;TQ4C-VV6T-75ZX-1RMR;65P1-UDGM-XH2M-LQW2":[28.21,2.27],
                                              "A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88;YRT6-72AS-K736-L4AR;TQ4C-VV6T-75ZX-1RMR":[21.80,1.75],
                                              "A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88;YRT6-72AS-K736-L4AR":[14.43,1.16],
                                              "A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88;TQ4C-VV6T-75ZX-1RMR":[20.03,1.61],
                                              "A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88;65P1-UDGM-XH2M-LQW2":[19.06,1.53],
                                              "A12T-4GH7-QPL9-3N4M;YRT6-72AS-K736-L4AR;E5T6-9UI3-TH15-QR88":[14.43,1.16],
                                              "A12T-4GH7-QPL9-3N4M;YRT6-72AS-K736-L4AR;TQ4C-VV6T-75ZX-1RMR":[12.91,1.04],
                                              "A12T-4GH7-QPL9-3N4M;YRT6-72AS-K736-L4AR;65P1-UDGM-XH2M-LQW2":[11.94,0.96],
                                              "A12T-4GH7-QPL9-3N4M;TQ4C-VV6T-75ZX-1RMR;E5T6-9UI3-TH15-QR88":[20.03,1.61],
                                              "A12T-4GH7-QPL9-3N4M;TQ4C-VV6T-75ZX-1RMR;YRT6-72AS-K736-L4AR":[12.91,1.04],
                                              "A12T-4GH7-QPL9-3N4M;TQ4C-VV6T-75ZX-1RMR;65P1-UDGM-XH2M-LQW2":[17.54,1.41],
                                              "A12T-4GH7-QPL9-3N4M;65P1-UDGM-XH2M-LQW2;E5T6-9UI3-TH15-QR88":[19.06,1.53],
                                              "A12T-4GH7-QPL9-3N4M;65P1-UDGM-XH2M-LQW2;YRT6-72AS-K736-L4AR":[11.94,0.96],
                                              "A12T-4GH7-QPL9-3N4M;65P1-UDGM-XH2M-LQW2;TQ4C-VV6T-75ZX-1RMR":[17.54,1.41],
                                              "E5T6-9UI3-TH15-QR88;A12T-4GH7-QPL9-3N4M;YRT6-72AS-K736-L4AR":[14.43,1.16],
                                              "E5T6-9UI3-TH15-QR88;A12T-4GH7-QPL9-3N4M;TQ4C-VV6T-75ZX-1RMR":[20.03,1.61],
                                              "E5T6-9UI3-TH15-QR88;A12T-4GH7-QPL9-3N4M;65P1-UDGM-XH2M-LQW2":[19.06,1.53],
                                              "E5T6-9UI3-TH15-QR88;YRT6-72AS-K736-L4AR;A12T-4GH7-QPL9-3N4M":[14.43,1.16],
                                              "E5T6-9UI3-TH15-QR88;YRT6-72AS-K736-L4AR;TQ4C-VV6T-75ZX-1RMR":[18.04,1.45],
                                              "E5T6-9UI3-TH15-QR88;YRT6-72AS-K736-L4AR;65P1-UDGM-XH2M-LQW2":[17.07,1.37],
                                              "E5T6-9UI3-TH15-QR88;TQ4C-VV6T-75ZX-1RMR;A12T-4GH7-QPL9-3N4M":[20.03,1.61],
                                              "E5T6-9UI3-TH15-QR88;TQ4C-VV6T-75ZX-1RMR;YRT6-72AS-K736-L4AR":[18.04,1.45],
                                              "E5T6-9UI3-TH15-QR88;TQ4C-VV6T-75ZX-1RMR;65P1-UDGM-XH2M-LQW2":[22.67,1.82],
                                              "E5T6-9UI3-TH15-QR88;65P1-UDGM-XH2M-LQW2;A12T-4GH7-QPL9-3N4M":[19.06,1.53],
                                              "E5T6-9UI3-TH15-QR88;65P1-UDGM-XH2M-LQW2;YRT6-72AS-K736-L4AR":[17.07,1.37],
                                              "E5T6-9UI3-TH15-QR88;65P1-UDGM-XH2M-LQW2;TQ4C-VV6T-75ZX-1RMR":[22.67,1.82],
                                              "YRT6-72AS-K736-L4AR;A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88":[14.43,1.16],
                                              "YRT6-72AS-K736-L4AR;A12T-4GH7-QPL9-3N4M;TQ4C-VV6T-75ZX-1RMR":[12.91,1.04],
                                              "YRT6-72AS-K736-L4AR;A12T-4GH7-QPL9-3N4M;65P1-UDGM-XH2M-LQW2":[11.94,0.96],
                                              "YRT6-72AS-K736-L4AR;E5T6-9UI3-TH15-QR88;A12T-4GH7-QPL9-3N4M":[14.43,1.16],
                                              "YRT6-72AS-K736-L4AR;E5T6-9UI3-TH15-QR88;TQ4C-VV6T-75ZX-1RMR":[18.04,1.45],
                                              "YRT6-72AS-K736-L4AR;E5T6-9UI3-TH15-QR88;65P1-UDGM-XH2M-LQW2":[17.07,1.37],
                                              "YRT6-72AS-K736-L4AR;TQ4C-VV6T-75ZX-1RMR;A12T-4GH7-QPL9-3N4M":[12.91,1.04],
                                              "YRT6-72AS-K736-L4AR;TQ4C-VV6T-75ZX-1RMR;E5T6-9UI3-TH15-QR88":[18.04,1.45],
                                              "YRT6-72AS-K736-L4AR;TQ4C-VV6T-75ZX-1RMR;65P1-UDGM-XH2M-LQW2":[15.55,1.25],
                                              "YRT6-72AS-K736-L4AR;65P1-UDGM-XH2M-LQW2;A12T-4GH7-QPL9-3N4M":[11.94,0.96],
                                              "YRT6-72AS-K736-L4AR;65P1-UDGM-XH2M-LQW2;E5T6-9UI3-TH15-QR88":[17.07,1.37],
                                              "YRT6-72AS-K736-L4AR;65P1-UDGM-XH2M-LQW2;TQ4C-VV6T-75ZX-1RMR":[15.55,1.25],
                                              "TQ4C-VV6T-75ZX-1RMR;A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88":[20.03,1.61],
                                              "TQ4C-VV6T-75ZX-1RMR;A12T-4GH7-QPL9-3N4M;YRT6-72AS-K736-L4AR":[12.91,1.04],
                                              "TQ4C-VV6T-75ZX-1RMR;A12T-4GH7-QPL9-3N4M;65P1-UDGM-XH2M-LQW2":[17.54,1.41],
                                              "TQ4C-VV6T-75ZX-1RMR;E5T6-9UI3-TH15-QR88;A12T-4GH7-QPL9-3N4M":[20.03,1.61],
                                              "TQ4C-VV6T-75ZX-1RMR;E5T6-9UI3-TH15-QR88;YRT6-72AS-K736-L4AR":[18.04,1.45],
                                              "TQ4C-VV6T-75ZX-1RMR;E5T6-9UI3-TH15-QR88;65P1-UDGM-XH2M-LQW2":[22.67,1.82],
                                              "TQ4C-VV6T-75ZX-1RMR;YRT6-72AS-K736-L4AR;A12T-4GH7-QPL9-3N4M":[12.91,1.04],
                                              "TQ4C-VV6T-75ZX-1RMR;YRT6-72AS-K736-L4AR;E5T6-9UI3-TH15-QR88":[18.04,1.45],
                                              "TQ4C-VV6T-75ZX-1RMR;YRT6-72AS-K736-L4AR;65P1-UDGM-XH2M-LQW2":[15.55,1.25],
                                              "TQ4C-VV6T-75ZX-1RMR;65P1-UDGM-XH2M-LQW2;A12T-4GH7-QPL9-3N4M":[17.54,1.41],
                                              "TQ4C-VV6T-75ZX-1RMR;65P1-UDGM-XH2M-LQW2;E5T6-9UI3-TH15-QR88":[22.67,1.82],
                                              "TQ4C-VV6T-75ZX-1RMR;65P1-UDGM-XH2M-LQW2;YRT6-72AS-K736-L4AR":[15.55,1.25],
                                              "65P1-UDGM-XH2M-LQW2;A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88":[19.06,1.53],
                                              "65P1-UDGM-XH2M-LQW2;A12T-4GH7-QPL9-3N4M;YRT6-72AS-K736-L4AR":[11.94,0.96],
                                              "65P1-UDGM-XH2M-LQW2;A12T-4GH7-QPL9-3N4M;TQ4C-VV6T-75ZX-1RMR":[17.54,1.41],
                                              "65P1-UDGM-XH2M-LQW2;E5T6-9UI3-TH15-QR88;A12T-4GH7-QPL9-3N4M":[19.06,1.53],
                                              "65P1-UDGM-XH2M-LQW2;E5T6-9UI3-TH15-QR88;YRT6-72AS-K736-L4AR":[17.07,1.37],
                                              "65P1-UDGM-XH2M-LQW2;E5T6-9UI3-TH15-QR88;TQ4C-VV6T-75ZX-1RMR":[22.67,1.82],
                                              "65P1-UDGM-XH2M-LQW2;YRT6-72AS-K736-L4AR;A12T-4GH7-QPL9-3N4M":[11.94,0.96],
                                              "65P1-UDGM-XH2M-LQW2;YRT6-72AS-K736-L4AR;E5T6-9UI3-TH15-QR88":[17.07,1.37],
                                              "65P1-UDGM-XH2M-LQW2;YRT6-72AS-K736-L4AR;TQ4C-VV6T-75ZX-1RMR":[15.55,1.25],
                                              "65P1-UDGM-XH2M-LQW2;TQ4C-VV6T-75ZX-1RMR;A12T-4GH7-QPL9-3N4M":[17.54,1.41],
                                              "65P1-UDGM-XH2M-LQW2;TQ4C-VV6T-75ZX-1RMR;E5T6-9UI3-TH15-QR88":[22.67,1.82],
                                              "65P1-UDGM-XH2M-LQW2;TQ4C-VV6T-75ZX-1RMR;YRT6-72AS-K736-L4AR":[15.55,1.25],
                                              "A12T-4GH7-QPL9-3N4M;E5T6-9UI3-TH15-QR88":[12.66,1.02],
                                              "A12T-4GH7-QPL9-3N4M;YRT6-72AS-K736-L4AR":[5.54,0.45],
                                              "A12T-4GH7-QPL9-3N4M;TQ4C-VV6T-75ZX-1RMR":[11.14,0.90],
                                              "A12T-4GH7-QPL9-3N4M;65P1-UDGM-XH2M-LQW2":[10.17,0.82],
                                              "E5T6-9UI3-TH15-QR88;A12T-4GH7-QPL9-3N4M":[12.66,1.02],
                                              "E5T6-9UI3-TH15-QR88;YRT6-72AS-K736-L4AR":[10.67,0.86],
                                              "E5T6-9UI3-TH15-QR88;TQ4C-VV6T-75ZX-1RMR":[16.27,1.31],
                                              "E5T6-9UI3-TH15-QR88;65P1-UDGM-XH2M-LQW2":[15.3,1.23],
                                              "YRT6-72AS-K736-L4AR;A12T-4GH7-QPL9-3N4M":[5.54,0.45],
                                              "YRT6-72AS-K736-L4AR;E5T6-9UI3-TH15-QR88":[10.67,0.86],
                                              "YRT6-72AS-K736-L4AR;TQ4C-VV6T-75ZX-1RMR":[9.15,0.74],
                                              "YRT6-72AS-K736-L4AR;65P1-UDGM-XH2M-LQW2":[8.18,0.66],
                                              "TQ4C-VV6T-75ZX-1RMR;A12T-4GH7-QPL9-3N4M":[11.14,0.90],
                                              "TQ4C-VV6T-75ZX-1RMR;E5T6-9UI3-TH15-QR88":[16.27,1.31],
                                              "TQ4C-VV6T-75ZX-1RMR;YRT6-72AS-K736-L4AR":[9.15,0.74],
                                              "TQ4C-VV6T-75ZX-1RMR;65P1-UDGM-XH2M-LQW2":[13.78,1.11],
                                              "65P1-UDGM-XH2M-LQW2;A12T-4GH7-QPL9-3N4M":[10.17,0.82],
                                              "65P1-UDGM-XH2M-LQW2;E5T6-9UI3-TH15-QR88":[15.3,1.23],
                                              "65P1-UDGM-XH2M-LQW2;YRT6-72AS-K736-L4AR":[8.18,0.66],
                                              "65P1-UDGM-XH2M-LQW2;TQ4C-VV6T-75ZX-1RMR":[13.78,1.11],
                                              "A12T-4GH7-QPL9-3N4M":[3.76,0.30],
                                              "E5T6-9UI3-TH15-QR88":[8.90,0.72],
                                              "YRT6-72AS-K736-L4AR":[1.77,0.14],
                                              "TQ4C-VV6T-75ZX-1RMR":[7.37,0.59],
                                              "65P1-UDGM-XH2M-LQW2":[6.41,0.52]]
    
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
    
    func testInitProductRecords() {
        
        let productHandler = ProductRecordHandler()
        XCTAssertTrue(productHandler.initProductRecords(),"initProductRecords() Failed")
        
    }
    
    func testCalcTotal() {
        
        let productHandler = ProductRecordHandler()
        XCTAssertTrue(productHandler.initProductRecords(),"initProductRecords() Failed")

        for key in calcTestValues.keys
        {
            var result = productHandler.calcTotal(products: key)
            
            let totalExpected = Double(round(100*result[1])/100)
            let totalActual = Double(round(100*(calcTestValues[key]?[0])!)/100)
            
            XCTAssertEqual(totalExpected, totalActual, key)
        }
    }
    
    func testCalculateTax() {
        
        let productHandler = ProductRecordHandler()
        XCTAssertTrue(productHandler.initProductRecords(),"initProductRecords() Failed")
        
        for key in calcTestValues.keys
        {
            var result = productHandler.calcTotal(products: key)
            
            let taxExpected = Double(round(100*result[0])/100)
            let taxActual = Double(round(100*(calcTestValues[key]?[1])!)/100)
            
            XCTAssertEqual(taxExpected, taxActual, key)
        }
    }
    
//    func testValidateUserInput()
//    {
//        let helperFunctions = HelperFunctions()
//
//        for key in calcTotalTestValues.keys
//        {
//            var result = helperFunctions.validateInput(input: key)
//            XCTAssertEqual(result[1], validateInputTestValues[key], key)
//        }
//    }
}
