//
//  pokemonViewController.swift
//  randomizers
//
//  Created by Metsch, Aaron on 6/13/19.
//  Copyright © 2019 Metsch, Aaron. All rights reserved.
//

import UIKit

class pokemonViewController: UIViewController {
    let baseurl = "pokeapi.co/api/v2/pokemon/"
    let pokemon: [String] = []
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
