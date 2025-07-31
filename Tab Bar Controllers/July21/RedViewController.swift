//
//  ViewController.swift
//  July21
//
//  Created by Student on 21/07/25.
//

import UIKit

class RedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.badgeValue = "6"
        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarItem.badgeValue = nil
    }
            
        
    
}
