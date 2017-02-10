//
//  ProductRecord.swift
//  Supermarket Register
//
//  Created by iostest on 2/5/17.
//  Copyright © 2017 Gannett. All rights reserved.
//

import Foundation

class ProductRecord {
    var name: String // Product name
    var code: String // Product code
    var price: Double // Product price
    
    /**
     Constructor
     
     Sets the name, code, and price of the Product Record
     
     */
    init(name: String, code: String, price: Double) {
        self.name = name
        self.code = code
        self.price = price
    }
    
    /**
     Returns the product name
     
     - returns: String.
     */
    var getName: String {
        return self.name
    }
    
    /**
     Returns the product code
     
     - returns: String.
     */
    var getCode: String {
        return self.code
    }
    
    /**
     Returns the product price
     
     - returns: String.
     */
    var getPrice: Double {
        return self.price
    }
}
