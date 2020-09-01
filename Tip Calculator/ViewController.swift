//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Jamie on 2020/09/01.
//  Copyright © 2020 Jamie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTotalText: UITextField!
    
    @IBOutlet weak var tipPercentageText: UITextField!
    
    
    @IBOutlet weak var calculatedTipText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton(_ sender: Any) {
        
        let billTotal = Double(billTotalText.text!)!
        let tipPercent = Double(tipPercentageText.text!)!
        
        let calculatedTip = billTotal * (tipPercent * 0.01)
        
        print(tipPercent)
        
        calculatedTipText.text = "Tip: $\(calculatedTip)"
        
        
    }
    
}

