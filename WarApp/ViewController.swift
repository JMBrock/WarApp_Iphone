//
//  ViewController.swift
//  WarApp
//
//  Created by Joseph Brock on 2/1/19.
//  Copyright © 2019 Joseph Brock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var LeftScore:Int = 0
    var RightScore:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func ResetTapped(_ sender: Any) {
        // Reset scores
        LeftScore = 0
        RightScore = 0
        // Reset image views
        leftImageView.image = UIImage(named: "back")
        rightImageView.image = UIImage(named: "back")
        
        // Update the labels
        leftScoreLabel.text = "\(LeftScore)"
        rightScoreLabel.text = "\(RightScore)"
    }
    
    @IBAction func DealTapped(_ sender: Any) {
        // We write code for this function which will be executed whenever the button is tapped!

        // Randomize two numbers
        let LeftRandomNumber = arc4random_uniform(13) + 2
        let RightRandomNumber = arc4random_uniform(13) + 2
        
        // get new cards
        let leftcard:String = "card\(LeftRandomNumber)"
        let rightcard:String = "card\(RightRandomNumber)"
        
        // Change image views
        leftImageView.image = UIImage(named: leftcard)
        rightImageView.image = UIImage(named: rightcard)
        
        // Compare the numbers
        if LeftRandomNumber > RightRandomNumber {
            // Update the score
            LeftScore += 1
            
            // Update the label
            leftScoreLabel.text = "\(LeftScore)"
        }
        else if RightRandomNumber > LeftRandomNumber {
            // Update the score
            RightScore += 1
            
            // Update the label
            rightScoreLabel.text = "\(RightScore)"
        }
        else if LeftRandomNumber == RightRandomNumber {
            
        }
    }
    
}

