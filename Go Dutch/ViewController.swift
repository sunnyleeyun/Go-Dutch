//
//  ViewController.swift
//  Go Dutch
//
//  Created by Sunny on 2016/8/8.
//  Copyright © 2016年 Sunny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountField: UITextField!
    @IBOutlet weak var serviceChargeField: UISegmentedControl!
    @IBOutlet weak var peopleAmountField: UITextField!
    @IBOutlet weak var publicAmountField: UITextField!
    @IBOutlet weak var myMoneyField: UITextField!

    
    func setInitialValue() {
        publicAmountField.text = "0"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setInitialValue()
        
        
        
        // Do any additional setup after loading the view, typically from a nib
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    
    
    
    
    
    @IBAction func calculate(sender: AnyObject) {
        if let billAmount = Double(billAmountField.text!) {
            
            if let peopleAmount = Double(peopleAmountField.text!) {
                
                if let publicRealMoney = Double(publicAmountField.text!){
                    
                //calculate
                var serviceChargeOrNot = 0.0
                
                switch serviceChargeField.selectedSegmentIndex {
                case 0:
                    serviceChargeOrNot = 0.00
                case 1:
                    serviceChargeOrNot = 0.00
                case 2:
                    serviceChargeOrNot = 0.10
                default:
                    break
                }
                
                myMoneyField.text = ""
                

                let roundedBillAmount = round(100*billAmount)/100
                let serviceChargeAmount = roundedBillAmount * serviceChargeOrNot
                let myRealAmount = (roundedBillAmount+serviceChargeAmount-publicRealMoney)/peopleAmount

                if (!billAmountField.editing) && (!peopleAmountField.editing) {
                    billAmountField.text = String(format: "%.0f", roundedBillAmount)
                    peopleAmountField.text = String(format: "%.0f", peopleAmount)
                    publicAmountField.text = String(format: "%.0f", publicRealMoney)
                }
                myMoneyField.text = String(format: "%.2f", myRealAmount)
                }
            }
        }

    }
    
}