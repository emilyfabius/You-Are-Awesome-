//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Emily Fabius on 1/31/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("🤖viewDidLoad has run")
        messageLabel.text = "Fab!"
    }


    @IBAction func messageButtonPress(_ sender: UIButton) {
        print("🤯The message button was pressed")
        messageLabel.text = "You are awesome!"
    }
    

    @IBAction func ShowAnotherMessage(_ sender: UIButton) {
        print("👁The another message button was pressed")
        messageLabel.text = "You are great!"
    }
}
