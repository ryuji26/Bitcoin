//
//  SettingViewController.swift
//  Bitcoin
//
//  Created by 髙橋　竜治 on 2022/01/04.
//

import UIKit

class SettingViewController: UITableViewController {

    @IBOutlet weak var APITextField: UITextField!

    @IBOutlet weak var priceTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveButton(_ sender: UIBarButtonItem) {
        if let API = APITextField.text,
           let price = priceTextField.text {
            print(API)
            print(price
            )
        }
    }
    @IBAction func toBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
