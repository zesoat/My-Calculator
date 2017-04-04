//
//  ViewController.swift
//  My Cal
//
//  Created by Thanawat Hirunyanitiwattana on 4/3/2560 BE.
//  Copyright © 2560 oatlab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mainNumber:Double = 0;
    var lastNumber:Double = 0;
    var inMath = false
    var operation = 0;
    
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var tempLabel: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if inMath == true
        {
            mainLabel.text = String(sender.tag)
            mainNumber = Double(mainLabel.text!)!
            inMath = false;
        }
        else
        {
            mainLabel.text = mainLabel.text! + String(sender.tag)
            mainNumber = Double(mainLabel.text!)!
        }
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if mainLabel.text != "" && sender.tag != 18 && sender.tag != 10
        {
            lastNumber = mainNumber
            mainLabel.text = ""
            if sender.tag == 11 //plus
            {
                tempLabel.text = String(Int(lastNumber)) + "+"
            }
            else if sender.tag == 12 //minus
            {
                tempLabel.text = String(Int(lastNumber)) + "-"
            }
            else if sender.tag == 13 //multiply
            {
                tempLabel.text = String(Int(lastNumber)) + "x"
            }
            else if sender.tag == 14 //divide
            {
                tempLabel.text = String(Int(lastNumber)) + "/"
            }
            
            operation = sender.tag
            inMath = true;
        }
        else if sender.tag == 10
        {
            if operation == 11
            {
                mainLabel.text = String(lastNumber + mainNumber)
            }
            else if operation == 12
            {
                mainLabel.text = String(lastNumber - mainNumber)
            }
            else if operation == 13
            {
                mainLabel.text = String(lastNumber * mainNumber)
            }
            else if operation == 14
            {
                mainLabel.text = String(lastNumber / mainNumber)
            }
            mainNumber = Double(mainLabel.text!)!
        }
        else if sender.tag == 17
        {
            mainLabel.text = ""
            tempLabel.text = ""
            lastNumber = 0;
            mainNumber = 0;
        }
         
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = ""
        tempLabel.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

