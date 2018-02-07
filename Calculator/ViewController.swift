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
    // will store which kind of operation is being performed
    var mathOperation: String?
    
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
        print("plusButtonPressed")
        
        // Check that a math operation has not been previously stored
        if mathOperation == nil {
            
            // update math operation property
            mathOperation = "+"
            
            // update display
            displayTextField.text = "+"
        } else {
            print("Error: cannot select another math operation.")
        }
    }
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        print("minusButtonPressed")
        
        // Check that a math operation has not been previously stored
        if mathOperation == nil {
            
            // update math operation property
            mathOperation = "-"
            
            // update display
            displayTextField.text = "-"
        } else {
            print("Error: cannot select another math operation.")
        }
    }
 
    @IBAction func equalsButtonPressed(_ sender: UIButton) {
        print("equalsButtonPressed")
        
        // display the results of calculation
        displayTextField.text = String(result)
    }
    
}

