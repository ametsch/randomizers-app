//
//  coinFlipperViewController.swift
//  randomizers
//
//  Created by Metsch, Aaron on 6/3/19.
//  Copyright © 2019 Metsch, Aaron. All rights reserved.
//

import UIKit

class coinFlipperViewController: UIViewController {
    
    public let coinFiles = ["images/coin_back.jpg","images/coin_front.jpg"]
    
    @IBOutlet weak var imgCoin: UIImageView!
    
    @IBAction func btnFlip(_ sender: UIButton) {
        let coin = coinFiles.randomElement()
        imgCoin.image = UIImage(named: coin!)
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
