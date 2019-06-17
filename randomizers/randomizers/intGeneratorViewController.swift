//
//  intGeneratorViewController.swift
//  randomizers
//
//  Created by Metsch, Aaron on 6/5/19.
//  Copyright © 2019 Metsch, Aaron. All rights reserved.
//

import UIKit

class intGeneratorViewController: UIViewController {
    var num: Int = 0
    var min: Int = 0
    var max: Int = 100
    
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func minField(_ sender: UITextField) {
        min = Int(sender.text ?? "0") ?? 0
    }
    @IBAction func maxField(_ sender: UITextField) {
        max = Int(sender.text ?? "100") ?? 100
    }
    @IBAction func btnGo(_ sender: UIButton) {
        if(min == max){
            min = 0
            max = 100
        }
        num = Int.random(in: min..<max)
        displayLabel.text = num.toString()
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
