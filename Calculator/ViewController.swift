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
    
    // MARK: - Outlets
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
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
            // Check and set value
            checkValue(num: 1)
            
        } else if sender == twoButton {
            print("the two button was pressed")
            // Check and set value
            checkValue(num: 2)
            
        } else if sender == threeButton {
            print("the three button was pressed")
            // Check and set value
            checkValue(num: 3)
        }
    }
    
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
    
    // MARK: - Helper methods
    
    // Will check the math operator, and perform calculation
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
    
    // Will check which of two values to set, or prevent from more than 2 values to be selected.
    func checkValue(num: Int) {
        // 1) Both values are empty, store as the first value
        if firstValue == nil && secondValue == nil {
            firstValue = num
        }
        // 2) The first value has been recorded, need the second value
        else if firstValue != nil && secondValue == nil {
            secondValue = num
        // 3) After 2 values have been selected by user
        } else {
            print("You have already selected 2 values to perform math on.")
        }
        // Update the display
        displayTextField.text = String(num)
    }
}

