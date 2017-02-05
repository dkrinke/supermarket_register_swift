//
//  ProductRecord.swift
//  Supermarket Register
//
//  Created by iostest on 2/5/17.
//  Copyright © 2017 Gannett. All rights reserved.
//

import Foundation

class ProductRecord {
    var index: Int
    var name: String
    var code: String
    var price: Double
    
    init(index: Int, name: String, code: String, price: Double) {
        self.index = index
        self.name = name
        self.code = code
        self.price = price
    }
    
    var getName: String {
        return self.name
    }
    
    var getCode: String {
        return self.code
    }
    
    var getPrice: Double {
        return self.price
    }
}
