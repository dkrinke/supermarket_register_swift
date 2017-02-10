//
//  HelperFunctions.swift
//  Supermarket Register
//
//  Created by iostest on 2/9/17.
//  Copyright © 2017 Gannett. All rights reserved.
//

import Foundation

class HelperFunctions {

    /**
     Vadlidates users input
     
     - parameter bar: String of user input
     
     - returns: Boolean.
     */
    func validateInput(input: String) -> Bool{
        
        if(input == ""){
            return false;
        }
        return true;
    }
    
    /**
     Converts user input to uppercase and returns the result
     
     - parameter bar: String of user input
     
     - returns: String.
     */
    func toCap(lowercase: String) -> String{
        return lowercase.uppercased()
    }
    
    /**
     Converts a Double into a Dollar amount format String
     
     - parameter bar: String Double amount
     
     - returns: String.
     */
    func returnDollarFormat(amount: Double) -> String {
        return "$" + String(format:"%.02f", amount)
    }
}

