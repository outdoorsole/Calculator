//
//  ViewController.swift
//  Calculator
//
//  Created by Maribel Montejano on 2/6/18.
//  Copyright © 2018 Maribel Montejano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    // will store button value selected by user
    var previousInput: String = ""
    // will store result of calculation
    var result: Int = 0
    
    // MARK: - Outlets
    @IBOutlet weak var displayTextField: UITextField!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: - Actions
    @IBAction func oneButtonPressed(_ sender: UIButton) {
        print("oneButtonPressed")
        displayTextField.text = "1"
        print(displayTextField.text!)
        
        // Addition
        if previousInput == "+" {
            // store second number for calculation
            previousInput = "1"
            print("previousInput: \(previousInput)")
            print("result: \(result)")
            
            // perform calculation and print
            result += Int(previousInput)!
            print("calculation result: \(result)")
        }
        // Subtraction
        else if previousInput == "-" {
            // store second number for calculation
            previousInput = "1"
            print("previousInput: \(previousInput)")
            print("result: \(result)")
            
            // perform calculation and print
            result -= Int(previousInput)!
            print("calculation result: \(result)")
        }
    }
    
    @IBAction func twoButtonPressed(_ sender: UIButton) {
        print("twoButtonPressed")
        displayTextField.text = "2"
        print(displayTextField.text!)
        
        // Addition
        if previousInput == "+" {
            // store second number for calculation
            previousInput = "2"
            print("previousInput: \(previousInput)")
            print("result: \(result)")
            
            // perform calculation and print
            result += Int(previousInput)!
            print("calculation result: \(result)")
        }
        // Subtraction
        else if previousInput == "-" {
            // store second number for calculation
            previousInput = "2"
            print("previousInput: \(previousInput)")
            print("result: \(result)")
            
            // perform calculation and print
            result -= Int(previousInput)!
            print("calculation result: \(result)")
        }
    }
    
    @IBAction func threeButtonPressed(_ sender: UIButton) {
        print("threeButtonPressed")
        displayTextField.text = "3"
        print(displayTextField.text!)
 
        // Addition
        if previousInput == "+" {
            // store second number for calculation
            previousInput = "3"
            print("previousInput: \(previousInput)")
            print("result: \(result)")
            
            // perform calculation and print
            result += Int(previousInput)!
            print("calculation result: \(result)")
        }
        // Subtraction
        else if previousInput == "-" {
            // store second number for calculation
            previousInput = "3"
            print("previousInput: \(previousInput)")
            print("result: \(result)")
            
            // perform calculation and print
            result -= Int(previousInput)!
            print("calculation result: \(result)")
        }
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        print("clearButtonPressed")
        displayTextField.text = "0"
        print(displayTextField.text!)
    }
    
    @IBAction func plusButtonPressed(_ sender: UIButton) {
        // Check that display value is not nil
        if let value = displayTextField.text {
            print("plusButtonPressed")
            print("value: \(value)")
            
            // store previousInput from display
            previousInput = value
            print("previousInput: \(previousInput)")
            
            // store previousInput for calculation
            result = Int(previousInput)!
            print("result: \(result)")
            
            // update display
            displayTextField.text = "+"
            
            // update input
            previousInput = displayTextField.text!
            print("previousInput: \(previousInput)")
            
        }
    }
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        // Check that display value is not nil
        if let value = displayTextField.text {
            print("minusButtonPressed")
            print("value: \(value)")
            
            // store previousInput from display
            previousInput = value
            print("previousInput: \(previousInput)")
            
            // store previousInput for calculation
            result = Int(previousInput)!
            print("result: \(result)")
            
            // update display
            displayTextField.text = "-"
            
            // update input
            previousInput = displayTextField.text!
            print("previousInput: \(previousInput)")
        }
    }
 
    @IBAction func equalsButtonPressed(_ sender: UIButton) {
        print("equalsButtonPressed")
        
        // display the results of calculation
        displayTextField.text = String(result)
    }
    
}

