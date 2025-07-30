//
//  ViewController.swift
//  SeguesAndNavigationControllers
//
//  Created by Student on 30/07/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindSegue(unwindSegue:UIStoryboardSegue){
        
    }
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
}

