//
//  ViewController.swift
//  randomizers
//
//  Created by Metsch, Aaron on 5/2/19.
//  Copyright © 2019 Metsch, Aaron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func btnDiceRoller(_ sender: Any) {
        performSegue(withIdentifier: "diceRollerSegue", sender: self)
    }
    @IBAction func btnTwister(_ sender: Any) {
        performSegue(withIdentifier: "twisterSegue", sender: self)
    }
    @IBAction func btnCoinFlipper(_ sender: Any) {
        performSegue(withIdentifier: "coinFlipperSegue", sender: self)
    }
    @IBAction func btnNumGen(_ sender: Any) {
        performSegue(withIdentifier: "numGenSegue", sender: self)
    }
    @IBAction func btnIntGen(_ sender: Any) {
        performSegue(withIdentifier: "intGenSegue", sender: self)
    }
    @IBAction func btnCard(_ sender: Any) {
        performSegue(withIdentifier: "cardSegue", sender: self)
    }
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

