//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Emily Fabius on 1/31/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var awesomeLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func messageButtonPress(_ sender: UIButton) {
        awesomeLabel.text = "You are awesome!"
        imageView.image = UIImage(named: "image0")
    }
}
