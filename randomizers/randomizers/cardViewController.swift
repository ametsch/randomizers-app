//
//  cardViewController.swift
//  randomizers
//
//  Created by Metsch, Aaron on 6/5/19.
//  Copyright © 2019 Metsch, Aaron. All rights reserved.
//

import UIKit

class cardViewController: UIViewController {
    
    let symbols = ["♠︎","♣︎","♥︎","♦︎"]
    
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var displayLabel: UILabel!
    @IBAction func btnGo(_ sender: UIButton) {
        
        switch symbols.randomElement(){
            case "♠︎":
                displayLabel.text = "♠︎"
                displayLabel.textColor = .black
            case "♣︎":
                displayLabel.text = "♣︎"
                displayLabel.textColor = .black
            case "♥︎":
                displayLabel.text = "♥︎"
                displayLabel.textColor = .red
            case "♦︎":
                displayLabel.text = "♦︎"
                displayLabel.textColor = .red
            default:
                break
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
