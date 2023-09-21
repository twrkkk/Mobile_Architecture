//
//  ViewController.swift
//  Concentration
//
//  Created by Жокей on 21.09.2023.
//  Copyright © 2023 Жокей. All rights reserved.
//hello world

import UIKit

class ViewController: UIViewController {
    
    @IBAction func TouchCard(_ sender: UIButton) {
        FlipCard(withEmoji: "🍒", on: sender)
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

