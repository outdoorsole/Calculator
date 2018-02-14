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
    // will store first value (digit) selected by user
    var firstValue: Int?
    
    // will store second value (digit) selected by user
    var secondValue: Int?
    
    // will store result of calculation (default is 0)
    var result: Int = 0
    
    // will store the kind of operation being performed
    var mathOperator: String?
    
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    
    // MARK: - Outlets
    @IBOutlet weak var displayTextField: UITextField!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Update display to show default result value (0)
        displayTextField.text = String(result)
    }

    // MARK: - Actions
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if sender == oneButton {
            print("the one button was pressed")
        } else if sender == twoButton {
            print("the two button was pressed")
        } else if sender == threeButton {
            print("the three button was pressed")
        }
    }
    

//    @IBAction func oneButtonPressed(_ sender: UIButton) {
//        print("\(oneButton)")
//        print("\(sender)")
//        if sender == oneButton {
//            print("the one button was pressed")
//        } else {
//            print("one of the other buttons was pressed")
//        }
//        // Both values are empty, store as the first value
//        if firstValue == nil && secondValue == nil {
//            firstValue = 1
//        }
//
//        // The first value has been recorded, need the second value
//        else if firstValue != nil && secondValue == nil {
//            secondValue = 1
//        } else {
//            print("You have already selected 2 values to perform math on.")
//        }
//
//        // Update the display
//        displayTextField.text = "1"
//    }
//
//    @IBAction func twoButtonPressed(_ sender: UIButton) {
//
//        // Both values are empty, store as the first value
//        if firstValue == nil && secondValue == nil {
//            firstValue = 2
//        }
//
//            // The first value has been recorded, need the second value
//        else if firstValue != nil && secondValue == nil {
//            secondValue = 2
//        } else {
//            print("You have already selected 2 values to perform math on.")
//        }
//
//        // Update the display
//        displayTextField.text = "2"
//    }
//
//    @IBAction func threeButtonPressed(_ sender: UIButton) {
//
//        // Both values are empty, store as the first value
//        if firstValue == nil && secondValue == nil {
//            firstValue = 3
//        }
//
//        // The first value has been recorded, need the second value
//        else if firstValue != nil && secondValue == nil {
//            secondValue = 3
//        } else {
//            print("You have already selected 2 values to perform math on.")
//        }
//
//        // Update the display
//        displayTextField.text = "3"
//    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        
        // Set both values and math operator equal to nil (default value)
        firstValue = nil
        secondValue = nil
        mathOperator = nil
        
        // Clear result, set to default value
        result = 0
        
        // Update display to reflect defaults
        displayTextField.text = "0"
    }
    
    @IBAction func plusButtonPressed(_ sender: UIButton) {
        
        // Check that a math operation has not been previously stored
        if mathOperator == nil {
            
            // Update math operation property
            mathOperator = "+"
            
            // Update display
            displayTextField.text = "+"
        } else {
            print("Error: cannot select another math operation.")
        }
    }
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        
        // Check that a math operation has not been previously stored
        if mathOperator == nil {
            
            // Update math operation property
            mathOperator = "-"
            
            // Update display
            displayTextField.text = "-"
        } else {
            print("Error: cannot select another math operation.")
        }
    }
 
    @IBAction func equalsButtonPressed(_ sender: UIButton) {
        
        // Perform calculation
        result = calculateResult()
        
        // Display the results of calculation
        displayTextField.text = String(result)
    }
    
    // MARK: - Helper method
    func calculateResult() -> Int {
        var total = 0
        
        // Check that all properties have a value
        if firstValue != nil && secondValue != nil && mathOperator != nil {
            // Check operator to pick math operation
            if mathOperator == "+" {
                total = firstValue! + secondValue!
            } else if mathOperator == "-" {
                total = firstValue! - secondValue!
            }
        }
        return total
    }
    
}

