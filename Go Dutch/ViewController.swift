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
    var textBillAmount = String()
    
    @IBOutlet weak var serviceChargeField: UISegmentedControl!
    
    @IBOutlet weak var peopleAmountField: UITextField!
    var textPepopleAmount = String()
    
    @IBOutlet weak var publicAmountField: UITextField!
    var textPublicAmount = String()
    
    @IBOutlet weak var myMoneyField: UITextField!
    @IBOutlet weak var sliderALaCarte: UISlider!
    @IBOutlet weak var numberOfSlider: UILabel!
    var textNumberOfSlider = String()
    
    @IBOutlet weak var confirmButton: UIButton!
    
    
    
    @IBOutlet weak var sumOfTotalALa: UITextField!
    var textSumOfTotalALa = String()
    
    @IBOutlet weak var myALa: UITextField!
    var textMyALa = String()
    
    
    func setInitialValue() {
        publicAmountField.text = "0"
        
        numberOfSlider.text = "0"
        if numberOfSlider.text == "0" {
            sumOfTotalALa.text = "0"
            myALa.text = "0"
        } else {
            sumOfTotalALa.text = textSumOfTotalALa
            myALa.text = textMyALa
        }
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        sumOfTotalALa.text = textSumOfTotalALa
        myALa.text = textMyALa

     
        numberOfSlider.text = textNumberOfSlider
        billAmountField.text = textBillAmount
        peopleAmountField.text = textPepopleAmount
        publicAmountField.text = textPublicAmount
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController : secondViewController = segue.destinationViewController as! secondViewController
        DestViewController.LabelText = numberOfSlider.text!
        DestViewController.TextBillAmount = billAmountField.text!
        DestViewController.TextPeopleAmount = peopleAmountField.text!
        DestViewController.TextPublicAmount = publicAmountField.text!
    }
    
    

    
    
    @IBAction func valueChanged(sender: AnyObject) {
        var currentValue = Int(sliderALaCarte.value)
        numberOfSlider.text = "\(currentValue)"
    }
    
    
    
    
    
    @IBAction func calculate(sender: AnyObject) {
        if let billAmount = Double(billAmountField.text!) {
            
            if let peopleAmount = Double(peopleAmountField.text!) {
                
                if let publicRealMoney = Double(publicAmountField.text!){
                    
                    if let totalALA = Double(sumOfTotalALa.text!){
                        
                        if let totaltotal = Double(myALa.text!){
                    
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
                let totaltotalIncludeServ = totaltotal + totaltotal * serviceChargeOrNot
                let totalALAIncludeServ = totalALA + totalALA * serviceChargeOrNot
                let myRealAmount = (roundedBillAmount+serviceChargeAmount-publicRealMoney-totalALAIncludeServ)/peopleAmount+totaltotalIncludeServ
                

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

    }
    
}


