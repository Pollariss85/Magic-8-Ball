//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    let ballArray = [#imageLiteral(resourceName: "THE ANSWER IS YES 3X1"),#imageLiteral(resourceName: "MAYBE ONE DAY 3X1"),#imageLiteral(resourceName: "YES 3X1"),#imageLiteral(resourceName: "NO 3X1"),#imageLiteral(resourceName: "ABSOLUTLY 3X 1"),#imageLiteral(resourceName: "NOPE 3X1"),#imageLiteral(resourceName: "NAH 3X1"),#imageLiteral(resourceName: "NEXT QUESTION 3X 1"),#imageLiteral(resourceName: "ASK AGAIN 3X 1"),#imageLiteral(resourceName: "YUP 3X 1"),#imageLiteral(resourceName: "NEVER 3X 1"),#imageLiteral(resourceName: "I HAVE NO IDEA 3X 1")]

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var askView: UIButton!
    
     override func viewDidLoad() {
        super.viewDidLoad()
       
        askView.layer.cornerRadius = 15
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
           if event?.subtype == UIEvent.EventSubtype.motionShake{
               print("Shake")
                imageView.image = ballArray.randomElement()
               AudioServicesPlaySystemSound(1520)
           }
           else {
               print("nil")
           }
       }
    @IBAction func askButtonPressed(_ sender: Any) {
        imageView.image = ballArray.randomElement()
         AudioServicesPlaySystemSound(1520)
    }
    
    
}

