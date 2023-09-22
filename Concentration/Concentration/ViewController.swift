//
//  ViewController.swift
//  Concentration
//
//  Created by Жокей on 21.09.2023.
//  Copyright © 2023 Жокей. All rights reserved.
//hello world

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0{
        didSet{
            FlipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBOutlet weak var FlipCountLabel: UILabel!
    
    var emojiChoices = ["🍒", "🍉", "🍌","🍒", "🍉", "🍌"]
    
    @IBAction func TouchCard(_ sender: UIButton) {
        flipCount+=1
        if let cardNumber = cardButtons.lastIndex(of: sender){
             FlipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else{
            print("choosen card was not int array")
        }
       
    }
    
    func FlipCard(withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji{
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
        } else{
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
}

