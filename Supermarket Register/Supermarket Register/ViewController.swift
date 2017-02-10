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
    @IBOutlet weak var taxValue: UILabel!
    @IBOutlet weak var totalValue: UILabel!
    
    
    let productHandler = ProductRecordHandler()
    let helperFunctions = HelperFunctions()

    @IBAction func submitProductCodes(_ sender: UIButton) {
//        print("Submit button Pressed") //For Testing
        
        guard let text = productInput.text else {
            print("productInput not available")
            return
        }
        
        if(helperFunctions.validateInput(input: text))
        {
            var result = productHandler.calcTotal(products: text)
//            print("tax: $"+result[0].description) //For Testing
//            print("total: $"+result[1].description) //For Testing
            taxValue.text = "$"+result[0].description
            totalValue.text = "$"+result[1].description
        }else
        {
            return
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.self.backgroundColor = UIColor.lightGray //Set Background color
        
        productHandler.initProductRecords()
        
//        if(productHandler.initProductRecords())
//        {
//            print("Initialization Successful\n")
//        }else{
//            print("Initialization Unsuccessful\n")
//        }
//        productHandler.printAllRecords() //For Testing
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

