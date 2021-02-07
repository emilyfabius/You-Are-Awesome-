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
    
    var imageNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        awesomeLabel.text = ""
    }


    @IBAction func messageButtonPress(_ sender: UIButton) {
        
        print(imageNum)
        //let imageName = "image" + String(imageNum)
        let imageName = "image\(imageNum)"
        imageView.image = UIImage(named: imageName)
        if imageNum <= 8 {
            imageNum = imageNum + 1
        }
        else {
            imageNum = 0
        }
        
        
        
        //        let awesomeMessage = "You are awesome!"
        //        let greatMessage = "You are great!"
        //        let catMessage = "You are a cool cat!"
        //
        //        if awesomeLabel.text == awesomeMessage{
        //            awesomeLabel.text = greatMessage
        //            imageView.image = UIImage(named: "image1")
        //        } else if awesomeLabel.text == greatMessage {
        //            awesomeLabel.text = catMessage
        //            imageView.image = UIImage(named: "image2")
        //        } else {
        //            awesomeLabel.text = awesomeMessage
        //            imageView.image = UIImage(named: "image0")
        //        }
        
    }
}
