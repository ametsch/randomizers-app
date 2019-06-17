//
//  DiceRollerViewController.swift
//  randomizers
//
//  Created by Metsch, Aaron on 5/2/19.
//  Copyright © 2019 Metsch, Aaron. All rights reserved.
//

import UIKit

class DiceRollerViewController: UIViewController {
    var diceFiles = ["images/dice1.png","images/dice2.png","images/dice3.png","images/dice4.png","images/dice5.png","images/dice6.png"]
    
    @IBOutlet weak var diceTwo: UIImageView!
    @IBOutlet weak var diceOne: UIImageView!
    
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func btnRoll(_ sender: UIButton) {
        diceOne.image = UIImage(named: diceFiles.randomElement()!)
        diceTwo.image = UIImage(named: diceFiles.randomElement()!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

