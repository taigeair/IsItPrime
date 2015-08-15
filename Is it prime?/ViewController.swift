//
//  ViewController.swift
//  Is it prime?
//
//  Created by Taige Zhang on 24/06/15.
//  Copyright (c) 2015 Taige Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    

    @IBOutlet weak var answer: UILabel!
    
    @IBOutlet weak var inputNumber: UITextField!

    @IBAction func checkNumber(sender: AnyObject) {
        
        var number = inputNumber.text.toInt()
        
        var isPrime = "true"
        
        if number == 1 || number <= 0 {
            
            isPrime = "false"
            
        } else {
            
            
            for var i = 2; i < number; i++ {
                if number!%i == 0 {
                    isPrime = "false"
                }
            }
        }
        println(isPrime)
        answer.text = isPrime
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        



    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

