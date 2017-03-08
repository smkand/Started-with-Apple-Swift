//
//  ViewController.swift
//  SwiftHello
//  Copyright © 2016 theswiftproject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myLabel: UILabel!
    
   
    @IBOutlet weak var enterTextBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = "Hello World"

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressButton() {
        myLabel.text = enterTextBox.text
        
    }

}

