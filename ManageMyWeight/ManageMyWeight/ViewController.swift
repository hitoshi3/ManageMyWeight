//
//  ViewController.swift
//  ManageMyWeight
//
//  Created by hitoshi on 2020/03/14.
//  Copyright © 2020 Toshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bodyWeightTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //segueにidentifierがセットされているか確認
        guard let identifier = segue.identifier else {
            //セットされていない
            return;
        }
        
        
        let showBodyWeightVC = segue.destination as! ShowBodyWeightViewController;
        
        //遷移先のviewにbodyWeightTextFieldの値をセットする。
        showBodyWeightVC.bodyWeight = self.bodyWeightTextField.text!;
    }

    @IBAction func Register(_ sender: Any) {
    }
    
}

