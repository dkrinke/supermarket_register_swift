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

    @IBAction func submitProductCodes(_ sender: UIButton) {
        print("Submit button Pressed") //For Testing
        
        guard let text = productInput.text else {
            print("productInput not available")
            return
        }
        
        if(text != "")
        {
            print("UITextField is", text)
        }else{
            print("UITextField is blank")
        }
        
        var result = productHandler.calcTotal(products: text)
        print("tax: $"+result[0].description)
        print("total: $"+result[1].description)
        taxValue.text = "$"+result[0].description
        totalValue.text = "$"+result[1].description
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.self.backgroundColor = UIColor.lightGray //Set Background color
        
        if(productHandler.initProductRecords())
        {
            print("Initialization Successful\n")
        }else{
            print("Initialization Unsuccessful\n")
        }
        
        productHandler.printAllRecords() //For Testing
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

