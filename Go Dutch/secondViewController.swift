//
//  createsecondviewcontrollerViewController.swift
//  Go Dutch
//
//  Created by Sunny on 2016/8/11.
//  Copyright © 2016年 Sunny. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    // var of "money amount"
    @IBOutlet weak var money1: UITextField!
    @IBOutlet weak var money2: UITextField!
    @IBOutlet weak var money3: UITextField!
    @IBOutlet weak var money4: UITextField!
    @IBOutlet weak var money5: UITextField!
    @IBOutlet weak var money6: UITextField!
    @IBOutlet weak var money7: UITextField!
    @IBOutlet weak var money8: UITextField!
    @IBOutlet weak var money9: UITextField!
    @IBOutlet weak var money10: UITextField!
 
    // var of "count of the A La Carte"
    @IBOutlet weak var number1: UITextField!
    @IBOutlet weak var number2: UITextField!
    @IBOutlet weak var number3: UITextField!
    @IBOutlet weak var number4: UITextField!
    @IBOutlet weak var number5: UITextField!
    @IBOutlet weak var number6: UITextField!
    @IBOutlet weak var number7: UITextField!
    @IBOutlet weak var number8: UITextField!
    @IBOutlet weak var number9: UITextField!
    @IBOutlet weak var number10: UITextField!
    
    // var of "whole stack of 1~10" --- for hidden the stack due to the 1st VC, kinds of A La Carte
    @IBOutlet weak var stack1: UIStackView!
    @IBOutlet weak var stack2: UIStackView!
    @IBOutlet weak var stack3: UIStackView!
    @IBOutlet weak var stack4: UIStackView!
    @IBOutlet weak var stack5: UIStackView!
    @IBOutlet weak var stack6: UIStackView!
    @IBOutlet weak var stack7: UIStackView!
    @IBOutlet weak var stack8: UIStackView!
    @IBOutlet weak var stack9: UIStackView!
    @IBOutlet weak var stack10: UIStackView!
    
    // var of "button of check boxes"
    @IBOutlet weak var check1: CheckBox!
    @IBOutlet weak var check2: CheckBox!
    @IBOutlet weak var check3: CheckBox!
    @IBOutlet weak var check4: CheckBox!
    @IBOutlet weak var check5: CheckBox!
    @IBOutlet weak var check6: CheckBox!
    @IBOutlet weak var check7: CheckBox!
    @IBOutlet weak var check8: CheckBox!
    @IBOutlet weak var check9: CheckBox!
    @IBOutlet weak var check10: CheckBox!
    
    // segue from the two view controllers
    @IBOutlet weak var TextBill: UILabel!
    var TextBillAmount = String()
    @IBOutlet weak var TextPeople: UILabel!
    var TextPeopleAmount = String()
    @IBOutlet weak var TextPublic: UILabel!
    var TextPublicAmount = String()
    @IBOutlet weak var labeltest: UILabel!
    var LabelText = String()
    
    
    // var of "total amount of 'all' A La Carte && total amount of 'my' A La Carte" --[not clarify yet]
    @IBOutlet weak var totaltotal: UILabel!
    @IBOutlet weak var myTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usingDictionary()
        labeltest.text = LabelText
        TextBill.text = TextBillAmount
        TextPeople.text = TextPeopleAmount
        TextPublic.text = TextPublicAmount
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController : ViewController = segue.destinationViewController as! ViewController
        DestViewController.textBillAmount = TextBill.text!
        DestViewController.textPepopleAmount = TextPeople.text!
        DestViewController.textPublicAmount = TextPublic.text!
        DestViewController.textMyALa = myTotal.text!
        DestViewController.textSumOfTotalALa = totaltotal.text!
        DestViewController.textNumberOfSlider = labeltest.text!
    }
    
    
    @IBOutlet weak var IfMoreThanOne: UIView!
    @IBOutlet weak var numberIfMoreThanOne: UITextField!
    @IBOutlet weak var buttonUpdateIfMoreThanOne: UIButton!
    @IBAction func buttonIfMoreThanOne(sender: UIButton) {
        var numberIfMoreThanOneInt : Int = Int(numberIfMoreThanOne.text!)!
        IfMoreThanOne.hidden = true
        if numberIfMoreThanOne != nil && numberIfMoreThanOneInt >= 2 {
            myDishes1.text = numberIfMoreThanOne.text!
        }
    }
    @IBOutlet weak var myDishes1: UILabel!
    
    //checkboxes for subview "IfMoreThanOne"
    @IBAction func check1(sender: CheckBox) {
        if let num1 = number1!.text {
            if Int(num1) >= 2 && check1.isChecked == false {
                IfMoreThanOne.hidden = false
            }
        }
    }
    @IBAction func check2(sender: CheckBox) {
        if let num2 = number2!.text {
            if Int(num2) >= 2 && check2.isChecked == false {
                IfMoreThanOne.hidden = false
            }
        }
    }
    @IBAction func check3(sender: CheckBox) {
        if let num3 = number3!.text {
            if Int(num3) >= 2 && check3.isChecked == false {
                IfMoreThanOne.hidden = false
            }
        }
    }
    @IBAction func check4(sender: CheckBox) {
        if let num4 = number4!.text {
            if Int(num4) >= 2 && check4.isChecked == false {
                IfMoreThanOne.hidden = false
            }
        }
    }
    @IBAction func check5(sender: CheckBox) {
        if let num5 = number5!.text {
            if Int(num5) >= 2 && check5.isChecked == false {
                IfMoreThanOne.hidden = false
            }
        }
    }
    @IBAction func check6(sender: CheckBox) {
        if let num6 = number6!.text {
            if Int(num6) >= 2 && check6.isChecked == false {
                IfMoreThanOne.hidden = false
            }
        }
    }
    @IBAction func check7(sender: CheckBox) {
        if let num7 = number7!.text {
            if Int(num7) >= 2 && check7.isChecked == false {
                IfMoreThanOne.hidden = false
            }
        }
    }
    @IBAction func check8(sender: CheckBox) {
        if let num8 = number8!.text {
            if Int(num8) >= 2 && check8.isChecked == false {
                IfMoreThanOne.hidden = false
            }
        }
    }
    @IBAction func check9(sender: CheckBox) {
        if let num9 = number9!.text {
            if Int(num9) >= 2 && check9.isChecked == false {
                IfMoreThanOne.hidden = false
            }
        }
    }
    @IBAction func check10(sender: CheckBox) {
        if let num10 = number10!.text {
            if Int(num10) >= 2 && check10.isChecked == false {
                IfMoreThanOne.hidden = false
            }
        }
    }
    

    
    
    @IBAction func addition(sender: UIButton) {
        var totalDiction1 = [1: money1, 2: money2, 3: money3, 4: money4, 5: money5, 6: money6, 7: money7, 8: money8, 9: money9, 10: money10]
        var totalDiction2 = [1: number1, 2: number2, 3: number3, 4: number4, 5: number5, 6: number6, 7: number7, 8: number8, 9: number9, 10: number10]
        var totalDiction3 = [1: check1, 2: check2, 3: check3, 4: check4, 5: check5, 6: check6, 7: check7, 8: check8, 9: check9, 10: check10]
       
        var numberIfMoreThanOneInt : Int = Int(numberIfMoreThanOne.text!)!
        var totalSum = 0
        var test = 0
        var myTotalSum = 0
        var myTest = 0
        
        
        for iindex in 1...10 {
            if let iindex1 = Int(totalDiction1[iindex]!.text!){
                if let iindex2 = Int(totalDiction2[iindex]!.text!){
                        test = iindex1 * iindex2
                        totalSum += test
                    if let iindex3 = totalDiction3[iindex]!  {
                        if iindex3.isChecked {
                            myTest = iindex1 * iindex2
                            myTotalSum += myTest
                            /*
                            if check1.isChecked == true && iindex == 1 {
                                myTest = iindex1 * numberIfMoreThanOneInt
                                myTotalSum += myTest
                            }
                            else if check2.isChecked == true && iindex == 2 {
                                myTest = iindex1 * numberIfMoreThanOneInt
                                myTotalSum += myTest
                            }
                            else if check3.isChecked == true && iindex == 3 {
                                myTest = iindex1 * iindex2
                                myTotalSum += myTest
                            }
                            else if check4.isChecked == true && iindex == 4 {
                                myTest = iindex1 * iindex2
                                myTotalSum += myTest
                            }
                            else if check5.isChecked == true && iindex == 5 {
                                myTest = iindex1 * iindex2
                                myTotalSum += myTest
                            }
                            else if check6.isChecked == true && iindex == 6 {
                                myTest = iindex1 * iindex2
                                myTotalSum += myTest
                            }
                            else if check7.isChecked == true && iindex == 7 {
                                myTest = iindex1 * iindex2
                                myTotalSum += myTest
                            }
                            else if check8.isChecked == true && iindex == 8 {
                                myTest = iindex1 * iindex2
                                myTotalSum += myTest
                            }
                            else if check9.isChecked == true && iindex == 9 {
                                myTest = iindex1 * iindex2
                                myTotalSum += myTest
                            }
                            else if check10.isChecked == true && iindex == 10 {
                                myTest = iindex1 * iindex2
                                myTotalSum += myTest
                            }
                            */
                        }
                    }
                }
            }
        }
        totaltotal.text = (String)(totalSum)
        myTotal.text = (String)(myTotalSum)
    }
    
    func usingDictionary(){
        var diction = [1: stack1, 2: stack2, 3: stack3, 4: stack4, 5: stack5, 6: stack6, 7: stack7, 8: stack8, 9: stack9, 10: stack10]
        if let counter = Int(LabelText){ //viewcontroller多少就多少
            for index in 1...10{//因為diction有10個
                if let stackIndex = diction[index]{//stack[index] = stack[1~10]
                    if counter < index {
                        stackIndex.hidden = true
                    }
                }
            }
        }
    }
}





//////// checkbox code ////////// useful!!!
class CheckBox: UIButton {
    // Images
    let checkedImage = UIImage(named: "checkbox")! as UIImage
    let uncheckedImage = UIImage(named: "emptycheckbox")! as UIImage
    // Bool property
    var isChecked: Bool = false {
        didSet{
            if isChecked == true {
                self.setImage(checkedImage, forState: .Normal)
            } else {
                self.setImage(uncheckedImage, forState: .Normal)
            }
        }
    }
    override func awakeFromNib() {
        self.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
        self.isChecked = false
    }
    func buttonClicked(sender: UIButton) {
        if sender == self {
            isChecked = !isChecked
        }
    }
}

