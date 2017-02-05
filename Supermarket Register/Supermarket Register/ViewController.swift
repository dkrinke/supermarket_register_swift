//
//  ViewController.swift
//  Supermarket Register
//
//  Created by iostest on 2/3/17.
//  Copyright © 2017 Gannett. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var productInput: UITextField!
    
    @IBAction func submitProductCodes(_ sender: UIButton) {
        /************* Testing *****************/
        print("Submit button Pressed")
        
        guard let text = productInput.text else {
            print("productInput not available")
            return
        }
        print("UITextField is", text)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.self.backgroundColor = UIColor.gray
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

