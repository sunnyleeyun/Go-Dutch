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
    @IBOutlet weak var sliderALaCarte: UISlider!
    @IBOutlet weak var numberOfSlider: UILabel!
  
    
    
    @IBOutlet weak var totalofalacarte: UILabel!
    var totalOfALaCarte = String()
    
    
    @IBOutlet weak var totalofallalalala: UILabel!
    var totalOfAllALALALA = String()
    
    
    func setInitialValue() {
        publicAmountField.text = "0"
        numberOfSlider.text = "0"
       // Int(totalofalacarte) = 0
       // Int(totalofallalalala) = 0
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setInitialValue()
        totalofalacarte.text = totalOfALaCarte
        totalofallalalala.text = totalOfAllALALALA
    
        // Do any additional setup after loading the view, typically from a nib
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController : secondViewController = segue.destinationViewController as! secondViewController
        DestViewController.LabelText = numberOfSlider.text!
    }
    
    

    
    
    @IBAction func valueChanged(sender: AnyObject) {
        var currentValue = Int(sliderALaCarte.value)
        numberOfSlider.text = "\(currentValue)"
    }
    
    
    
    
    
    @IBAction func calculate(sender: AnyObject) {
        if let billAmount = Double(billAmountField.text!) {
            
            if let peopleAmount = Double(peopleAmountField.text!) {
                
                if let publicRealMoney = Double(publicAmountField.text!){
                    
                    if let totalALA = Double(totalofalacarte.text!){
                        
                        if let totaltotal = Double(totalofallalalala.text!){
                    
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
                let myRealAmount = (roundedBillAmount+serviceChargeAmount-publicRealMoney-totaltotal)/peopleAmount+totalALA

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


