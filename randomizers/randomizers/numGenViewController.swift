//
//  numGenViewController.swift
//  randomizers
//
//  Created by Metsch, Aaron on 6/5/19.
//  Copyright © 2019 Metsch, Aaron. All rights reserved.
//

import UIKit

class numGenViewController: UIViewController {
    
    var num: Double = 0.0
    var min: Double = 0
    var max: Double = 100
    
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBAction func minField(_ sender: UITextField) {
        min = Double(sender.text ?? "0.0") ?? 0.0
    }
    @IBAction func maxField(_ sender: UITextField) {
        max = Double(sender.text ?? "100.0") ?? 100.0
    }
    @IBAction func btnGo(_ sender: UIButton) {
        if(min == max){
            min = 0.0
            max = 100.0
        }
         num = Double.random(in: min..<max)
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
