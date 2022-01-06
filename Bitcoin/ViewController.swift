//
//  ViewController.swift
//  Bitcoin
//
//  Created by 髙橋　竜治 on 2022/01/04.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nowPrice: UILabel!

    override func viewDidLoad() {
    }

    @IBAction func goToSetting(_ sender: Any) {
        performSegue(withIdentifier: "toSetting", sender: nil)
    }

}

