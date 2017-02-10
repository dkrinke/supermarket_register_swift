//
//  ViewController.swift
//  Supermarket Register
//
//  Created by iostest on 2/3/17.
//  Copyright © 2017 Gannett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var productInput: UITextField! //User input field
    @IBOutlet weak var taxValue: UILabel! //UILabel to update tax value
    @IBOutlet weak var totalValue: UILabel! //UILabel to update total value
    
    
    let productHandler = ProductRecordHandler() //Provides functions for calculating total based on use input
    let helperFunctions = HelperFunctions() //Provides a helper function to validate/convert user input

    @IBAction func submitProductCodes(_ sender: UIButton) {
        
        guard let text = productInput.text else {
            print("productInput not available")
            return
        }
        
        if(helperFunctions.validateInput(input: text))
        {
            var result = productHandler.calcTotal(products: helperFunctions.toCap(lowercase: text))
            taxValue.text = helperFunctions.returnDollarFormat(amount: result[0]) // Set the tax value
            totalValue.text = helperFunctions.returnDollarFormat(amount: result[1]) // Set the total value
        }else
        {
            return
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.self.backgroundColor = UIColor.lightGray //Set Background color
        
        productHandler.initProductRecords() // Initializes the Product codes when the view loads
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

