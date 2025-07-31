//
//  MiddleViewController.swift
//  Lab-Order Of Events
//
//  Created by Student on 31/07/25.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var middleViewLabel: UILabel!
    var eventNumber = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from:"viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        addEvent(from:"viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
        addEvent(from:"viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        addEvent(from:"viewDidDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        addEvent(from:"viewDidDisappear")
    }
    
    
    
    func addEvent(from: String) {
        if let existingText = middleViewLabel.text {
            middleViewLabel.text = "\(existingText)\nEvent Number\(eventNumber) was \(from)"
            eventNumber += 1
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
