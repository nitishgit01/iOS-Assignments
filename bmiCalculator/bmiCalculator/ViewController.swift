//
//  ViewController.swift
//  bmiCalculator
//
//  Created by Akshit Goyal on 14/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightTextfield: UITextField!
    @IBOutlet weak var heightTextfield: UITextField!
    
    @IBOutlet weak var calculateBmi: UILabel!
    
    @IBOutlet weak var calculateCategory: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculateButtonPressed(_ sender: Any) {
        let weightString = weightTextfield.text ?? ""
        let weight = Double(weightString) ?? 0
        
        let heightString = heightTextfield.text ?? ""
        let height = Double(heightString) ?? 0
        
        let BMI = weight / (height * height)
        
        calculateBmi.text = "BMI: \(BMI)"
        
        if BMI > 40.0 {
            calculateCategory.text = "You are Over Weight!!"
        } else if BMI > 30.0 {
            calculateCategory.text = "You are Healthy!!"
        } else {
            calculateCategory.text = "You are Under Weight!!"
        }
    }
}

