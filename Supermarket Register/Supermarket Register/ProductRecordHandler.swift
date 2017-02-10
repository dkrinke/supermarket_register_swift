//
//  ProductRecordHandler.swift
//  Supermarket Register
//
//  Created by iostest on 2/5/17.
//  Copyright © 2017 Gannett. All rights reserved.
//

import Foundation

class ProductRecordHandler {
    
    var productRecordList = [String: ProductRecord]() //List that contains all of the product records
    
    /**
     Initializes the product records and adds them to the
     product record list
     
     - parameter bar:
     
     - returns: Boolean.
     */
    func initProductRecords() -> Bool {
        let product1 = ProductRecord(name: "Cereal", code: "A12T-4GH7-QPL9-3N4M", price: 3.46)
        let product2 = ProductRecord(name: "Chicken", code: "E5T6-9UI3-TH15-QR88", price: 8.18)
        let product3 = ProductRecord(name: "Pop", code: "YRT6-72AS-K736-L4AR", price: 1.63)
        let product4 = ProductRecord(name: "Pizza", code: "TQ4C-VV6T-75ZX-1RMR", price: 6.78)
        let product5 = ProductRecord(name: "Tuna", code: "65P1-UDGM-XH2M-LQW2", price: 5.89)
        
        addProductRecord(code: "A12T-4GH7-QPL9-3N4M", productRecord: product1)
        addProductRecord(code: "E5T6-9UI3-TH15-QR88", productRecord: product2)
        addProductRecord(code: "YRT6-72AS-K736-L4AR", productRecord: product3)
        addProductRecord(code: "TQ4C-VV6T-75ZX-1RMR", productRecord: product4)
        addProductRecord(code: "65P1-UDGM-XH2M-LQW2", productRecord: product5)
        
        return true
    }
    
    /**
     Adds a Product record to the productRecordList
     
     - parameter bar: Product code(Key), Product Record.
     
     - returns: Void.
     */
    func addProductRecord(code: String, productRecord: ProductRecord) -> Void {
        productRecordList[code] = productRecord
    }
    
    /****************BELOW DEV FOR TESTING*******************/
    /**
     Prints out all products to the console for testing.
     
     - parameter bar:
     
     - returns: Void.
     */
    func printAllRecords() -> Void {
        printRecord(code: "A12T-4GH7-QPL9-3N4M")
        printRecord(code: "E5T6-9UI3-TH15-QR88")
        printRecord(code: "YRT6-72AS-K736-L4AR")
        printRecord(code: "TQ4C-VV6T-75ZX-1RMR")
        printRecord(code: "65P1-UDGM-XH2M-LQW2")
    }
    
    /**
     Prints out a single product to the console for testing.
     based on product key input.
     
     - parameter bar: Product code.
     
     - returns: Void.
     */
    func printRecord(code: String) -> Void {
        if let product = productRecordList[code] {
            print("Product: " + product.getName)
            print("Code: " + product.getCode)
            print("Price: $" + product.getPrice.description)
            print("\n")
        }
    }
    /****************ABOVE DEV FOR TESTING*******************/

    
    /**
    Calculates the total(Including tax) based on the user input.
    
    - parameter bar: A string containing product codes seperated with a ;.
    
    - returns: Returns the tax and the total value(Including tax).
    */
    func calcTotal(products: String) -> Array<Double> {
        let list = products.components(separatedBy: ";")
        var result = Array<Double>()
        
        var total = 0.00
        
        list.forEach { (code) in
            
            if let product = productRecordList[code]
            {
                total += product.getPrice
            }
        }
        
        let tax = calculateTax(preTaxTotal: total)
        total += tax
        
        result.append(tax)
        result.append(total)
        
        return result
    }
    
    /**
     Calculates the tax based on the total input.
     
     - parameter bar: The pre-tax total.
     
     - returns: Tax value rounded to two decimal places.
     */
    func calculateTax(preTaxTotal: Double) -> Double {
        
        let tax = preTaxTotal * 0.0875
        let roundedTax = Double(round(100*tax)/100)
        
        return roundedTax
    }
}
