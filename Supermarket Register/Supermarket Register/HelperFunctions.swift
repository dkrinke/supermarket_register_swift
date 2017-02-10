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
    
    func toCap(lowercase: String) -> String{
        return lowercase.uppercased()
    }
}

