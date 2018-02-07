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
    // will store digit selected by user
    var number: Int = 0
    
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
        number = 1
        displayTextField.text = String(number)
        print(number)
    }
    
    @IBAction func twoButtonPressed(_ sender: UIButton) {
        print("twoButtonPressed")
        number = 2
        displayTextField.text = "2"
        print(number)
    }
    
    @IBAction func threeButtonPressed(_ sender: UIButton) {
        print("threeButtonPressed")
        number = 3
        displayTextField.text = "3"
        print(number)
    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        print("clearButtonPressed")
        number = 0
        displayTextField.text = "0"
        print(number)
    }
    
}

