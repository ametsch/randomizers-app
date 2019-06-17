//
//  twisterViewController.swift
//  randomizers
//
//  Created by Metsch, Aaron on 6/3/19.
//  Copyright © 2019 Metsch, Aaron. All rights reserved.
//

import UIKit

class twisterViewController: UIViewController {
    func spin() -> Array<String>{
        let sides = ["Left", "Right"]
        let side = sides.randomElement()
        
        let limbs = ["Hand", "Foot"]
        let limb = limbs.randomElement()
        
        let colors = ["Red", "Green", "Blue", "Yellow"]
        let color = colors.randomElement()
        
        return [side!, limb!, color!]
    }
    @IBOutlet weak var displayLabel: UILabel!
    @IBAction func btnClear(_ sender: UIButton) {
        displayLabel.text = ""
        view.backgroundColor = .white
    }
    @IBAction func btnSpin(_ sender: UIButton) {
        var output = spin()
        let side = output[0]
        let limb = output[1]
        let color = output[2]
        
        switch color{
            case "Red":
                view.backgroundColor = .red
            case "Green":
                view.backgroundColor = .green
            case "Blue":
                view.backgroundColor = .blue
            case "Yellow":
                view.backgroundColor = .yellow
            default:
                view.backgroundColor = .white
        }
        
        displayLabel.text = "Put your \(side) \(limb) on \(color)"
        
    }
    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
