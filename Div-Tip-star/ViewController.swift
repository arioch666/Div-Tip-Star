//
//  ViewController.swift
//  Div-Tip-star
//
//  Created by arioch on 9/29/16.
//  Copyright © 2016 arioch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!

    let tipPercentages = [0.1, 0.15, 0.2, 0.22, 0.25]

    @IBOutlet weak var tipPercentageSelector: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: AnyObject) {



        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipPercentageSelector.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

