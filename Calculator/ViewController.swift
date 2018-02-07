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
    // will store last digit selected by user
    var previousInput: Int = 0
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
    }
    
    @IBAction func twoButtonPressed(_ sender: UIButton) {
        print("twoButtonPressed")
        displayTextField.text = "2"
        print(displayTextField.text!)
    }
    
    @IBAction func threeButtonPressed(_ sender: UIButton) {
        print("threeButtonPressed")
        displayTextField.text = "3"
        print(displayTextField.text!)
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        print("clearButtonPressed")
        displayTextField.text = "0"
        print(displayTextField.text!)
    }
    
    @IBAction func plusButtonPressed(_ sender: UIButton) {
        if let value = displayTextField.text {
            print("plusButtonPressed")
            
            print("value: \(value)")
            // store previously selected previousInput
            previousInput = Int(value)!
            print("previousInput: \(previousInput)")
            
            // update display
            displayTextField.text = "+"
            
            // store previousInput for calculation
            result = previousInput
            print("result: \(result)")
            
        }
    }
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        if let value = displayTextField.text {
            print("minusButtonPressed")
            
            print("value: \(value)")
            // store previously selected previousInput
            previousInput = Int(value)!
            print("previousInput: \(previousInput)")
            
            // update display
            displayTextField.text = "-"
            
            // store previousInput for calculation
            result = previousInput
            print("result: \(result)")
        }
    }
    
}

