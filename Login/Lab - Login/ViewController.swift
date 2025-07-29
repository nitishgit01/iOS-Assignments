//
//  ViewController.swift
//  Lab - Login
//
//  Created by Akshit Goyal on 18/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot UserName"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
    }
    
    @IBAction func ForgotUsernameorPassword(_ sender: UIButton) {
        performSegue(withIdentifier: "Login", sender: sender)
    }
}

