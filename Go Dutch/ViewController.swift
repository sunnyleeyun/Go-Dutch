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
    
    
    //segue from second view controller
    @IBOutlet weak var name1: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var name3: UILabel!
    @IBOutlet weak var name4: UILabel!
    @IBOutlet weak var name5: UILabel!
    @IBOutlet weak var name6: UILabel!
    @IBOutlet weak var name7: UILabel!
    @IBOutlet weak var name8: UILabel!
    @IBOutlet weak var name9: UILabel!
    @IBOutlet weak var name10: UILabel!
    var SName1 = String()
    var SName2 = String()
    var SName3 = String()
    var SName4 = String()
    var SName5 = String()
    var SName6 = String()
    var SName7 = String()
    var SName8 = String()
    var SName9 = String()
    var SName10 = String()
    @IBOutlet weak var money1: UILabel!
    @IBOutlet weak var money2: UILabel!
    @IBOutlet weak var money3: UILabel!
    @IBOutlet weak var money4: UILabel!
    @IBOutlet weak var money5: UILabel!
    @IBOutlet weak var money6: UILabel!
    @IBOutlet weak var money7: UILabel!
    @IBOutlet weak var money8: UILabel!
    @IBOutlet weak var money9: UILabel!
    @IBOutlet weak var money10: UILabel!
    var SMoney1 = String()
    var SMoney2 = String()
    var SMoney3 = String()
    var SMoney4 = String()
    var SMoney5 = String()
    var SMoney6 = String()
    var SMoney7 = String()
    var SMoney8 = String()
    var SMoney9 = String()
    var SMoney10 = String()
    @IBOutlet weak var number1: UILabel!
    @IBOutlet weak var number2: UILabel!
    @IBOutlet weak var number3: UILabel!
    @IBOutlet weak var number4: UILabel!
    @IBOutlet weak var number5: UILabel!
    @IBOutlet weak var number6: UILabel!
    @IBOutlet weak var number7: UILabel!
    @IBOutlet weak var number8: UILabel!
    @IBOutlet weak var number9: UILabel!
    @IBOutlet weak var number10: UILabel!
    var SNumber1 = String()
    var SNumber2 = String()
    var SNumber3 = String()
    var SNumber4 = String()
    var SNumber5 = String()
    var SNumber6 = String()
    var SNumber7 = String()
    var SNumber8 = String()
    var SNumber9 = String()
    var SNumber10 = String()
    
    
    
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
        self.hideKeyboardWhenTappedAround()
        sumOfTotalALa.text = textSumOfTotalALa
        myALa.text = textMyALa

     
        numberOfSlider.text = textNumberOfSlider
        billAmountField.text = textBillAmount
        peopleAmountField.text = textPepopleAmount
        publicAmountField.text = textPublicAmount
        
        name1.text = SName1
        name2.text = SName2
        name3.text = SName3
        name4.text = SName4
        name5.text = SName5
        name6.text = SName6
        name7.text = SName7
        name8.text = SName8
        name9.text = SName9
        name10.text = SName10
        
        money1.text = SMoney1
        money2.text = SMoney2
        money3.text = SMoney3
        money4.text = SMoney4
        money5.text = SMoney5
        money6.text = SMoney6
        money7.text = SMoney7
        money8.text = SMoney8
        money9.text = SMoney9
        money10.text = SMoney10

        
        number1.text = SNumber1
        number2.text = SNumber2
        number3.text = SNumber3
        number4.text = SNumber4
        number5.text = SNumber5
        number6.text = SNumber6
        number7.text = SNumber7
        number8.text = SNumber8
        number9.text = SNumber9
        number10.text = SNumber10
        

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
        
        DestViewController.SName1 = name1.text!
        DestViewController.SName2 = name2.text!
        DestViewController.SName3 = name3.text!
        DestViewController.SName4 = name4.text!
        DestViewController.SName5 = name5.text!
        DestViewController.SName6 = name6.text!
        DestViewController.SName7 = name7.text!
        DestViewController.SName8 = name8.text!
        DestViewController.SName9 = name9.text!
        DestViewController.SName10 = name10.text!
        
        DestViewController.SMoney1 = money1.text!
        DestViewController.SMoney2 = money2.text!
        DestViewController.SMoney3 = money3.text!
        DestViewController.SMoney4 = money4.text!
        DestViewController.SMoney5 = money5.text!
        DestViewController.SMoney6 = money6.text!
        DestViewController.SMoney7 = money7.text!
        DestViewController.SMoney8 = money8.text!
        DestViewController.SMoney9 = money9.text!
        DestViewController.SMoney10 = money10.text!
        
        DestViewController.SNumber1 = number1.text!
        DestViewController.SNumber2 = number2.text!
        DestViewController.SNumber3 = number3.text!
        DestViewController.SNumber4 = number4.text!
        DestViewController.SNumber5 = number5.text!
        DestViewController.SNumber6 = number6.text!
        DestViewController.SNumber7 = number7.text!
        DestViewController.SNumber8 = number8.text!
        DestViewController.SNumber9 = number9.text!
        DestViewController.SNumber10 = number10.text!
        
    }
    
    

    
    
    @IBAction func valueChanged(sender: AnyObject) {
        var currentValue = Int(sliderALaCarte.value)
        numberOfSlider.text = "\(currentValue)"
    }
    
    
    
    
    
    @IBAction func calculate(sender: AnyObject) {
        if let billAmount = Double(billAmountField.text!) {
            
            if let peopleAmount = Double(peopleAmountField.text!) {
                
                if let publicRealMoney = Double(publicAmountField.text!){
                    
                    if let totaltotal = Double(sumOfTotalALa.text!){
                        
                        if let totalALA = Double(myALa.text!){
                    
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
                
                
                    
                
                

                let roundedBillAmount = round(100*billAmount)/100
                let serviceChargeAmount = roundedBillAmount * serviceChargeOrNot
                let totaltotalIncludeServ = totaltotal + totaltotal * serviceChargeOrNot
                let totalALAIncludeServ = totalALA + totalALA * serviceChargeOrNot
                let myRealAmount = (roundedBillAmount+serviceChargeAmount-publicRealMoney-totaltotalIncludeServ)/peopleAmount+totalALAIncludeServ
                
                myMoneyField.text = ""
                
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
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}


