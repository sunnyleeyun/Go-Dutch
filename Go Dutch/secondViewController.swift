//
//  createsecondviewcontrollerViewController.swift
//  Go Dutch
//
//  Created by Sunny on 2016/8/11.
//  Copyright © 2016年 Sunny. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    //name
    @IBOutlet weak var name1: UITextField!
    @IBOutlet weak var name2: UITextField!
    @IBOutlet weak var name3: UITextField!
    @IBOutlet weak var name4: UITextField!
    @IBOutlet weak var name5: UITextField!
    @IBOutlet weak var name6: UITextField!
    @IBOutlet weak var name7: UITextField!
    @IBOutlet weak var name8: UITextField!
    @IBOutlet weak var name9: UITextField!
    @IBOutlet weak var name10: UITextField!
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
    
    //the whole stack
    @IBOutlet weak var superStackView: UIStackView!
    
    
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
        self.hideKeyboardWhenTappedAround()
        
        labeltest.text = LabelText
        TextBill.text = TextBillAmount
        TextPeople.text = TextPeopleAmount
        TextPublic.text = TextPublicAmount
        
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
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController : ViewController = segue.destinationViewController as! ViewController
        
        DestViewController.textBillAmount = TextBill.text!
        DestViewController.textPepopleAmount = TextPeople.text!
        DestViewController.textPublicAmount = TextPublic.text!
        DestViewController.textMyALa = myTotal.text!
        DestViewController.textSumOfTotalALa = totaltotal.text!
        DestViewController.textNumberOfSlider = labeltest.text!
        
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

    
    

    //"subview"
    @IBOutlet weak var IfMoreThanOne: UIView!
    
    
    //"text" of subview- 10 of the number for my own dishes
    @IBOutlet weak var NIMONE1: UITextField!
    @IBOutlet weak var NIMONE2: UITextField!
    @IBOutlet weak var NIMONE3: UITextField!
    @IBOutlet weak var NIMONE4: UITextField!
    @IBOutlet weak var NIMONE5: UITextField!
    @IBOutlet weak var NIMONE6: UITextField!
    @IBOutlet weak var NIMONE7: UITextField!
    @IBOutlet weak var NIMONE8: UITextField!
    @IBOutlet weak var NIMONE9: UITextField!
    @IBOutlet weak var NIMONE10: UITextField!
    
    
    //"button of subview"- confirm and back to second viewcontroller
    @IBOutlet weak var buttonUpdateIfMoreThanOne: UIButton!
    @IBAction func buttonIfMoreThanOne(sender: UIButton) {
        IfMoreThanOne.hidden = true
    }
    
    
    //checkboxes for subview "IfMoreThanOne"
    @IBAction func check1(sender: CheckBox) {
        var totalDictionaryOfNumber = [1: NIMONE1, 2: NIMONE2, 3: NIMONE3, 4: NIMONE4, 5: NIMONE5, 6: NIMONE6, 7: NIMONE7, 8: NIMONE8, 9: NIMONE9, 10: NIMONE10]
        if let num1 = number1!.text {
            if Int(num1) >= 2 && check1.isChecked == false {
                IfMoreThanOne.hidden = false
                for indexer in 1...10 {
                    if let checkOneNum = totalDictionaryOfNumber[indexer]{
                        if checkOneNum == NIMONE1 {
                            checkOneNum.hidden = false
                        } else {
                            checkOneNum.hidden = true
                        }
                    }
                }
            }
        }
    }
    @IBAction func check2(sender: CheckBox) {
        var totalDictionaryOfNumber = [1: NIMONE1, 2: NIMONE2, 3: NIMONE3, 4: NIMONE4, 5: NIMONE5, 6: NIMONE6, 7: NIMONE7, 8: NIMONE8, 9: NIMONE9, 10: NIMONE10]
        if let num2 = number2!.text {
            if Int(num2) >= 2 && check2.isChecked == false {
                IfMoreThanOne.hidden = false
                for indexer in 1...10 {
                    if let checkOneNum = totalDictionaryOfNumber[indexer]{
                        if checkOneNum == NIMONE2 {
                            checkOneNum.hidden = false
                        } else {
                            checkOneNum.hidden = true
                        }
                    }
                }
            }
        }
    }
    @IBAction func check3(sender: CheckBox) {
        var totalDictionaryOfNumber = [1: NIMONE1, 2: NIMONE2, 3: NIMONE3, 4: NIMONE4, 5: NIMONE5, 6: NIMONE6, 7: NIMONE7, 8: NIMONE8, 9: NIMONE9, 10: NIMONE10]
        if let num3 = number3!.text {
            if Int(num3) >= 2 && check3.isChecked == false {
                IfMoreThanOne.hidden = false
                for indexer in 1...10 {
                    if let checkOneNum = totalDictionaryOfNumber[indexer]{
                        if checkOneNum == NIMONE3 {
                            checkOneNum.hidden = false
                        } else {
                            checkOneNum.hidden = true
                        }
                    }
                }
            }
        }
    }
    @IBAction func check4(sender: CheckBox) {
        var totalDictionaryOfNumber = [1: NIMONE1, 2: NIMONE2, 3: NIMONE3, 4: NIMONE4, 5: NIMONE5, 6: NIMONE6, 7: NIMONE7, 8: NIMONE8, 9: NIMONE9, 10: NIMONE10]
        if let num4 = number4!.text {
            if Int(num4) >= 2 && check4.isChecked == false {
                IfMoreThanOne.hidden = false
                for indexer in 1...10 {
                    if let checkOneNum = totalDictionaryOfNumber[indexer]{
                        if checkOneNum == NIMONE4 {
                            checkOneNum.hidden = false
                        } else {
                            checkOneNum.hidden = true
                        }
                    }
                }
            }
        }
    }
    @IBAction func check5(sender: CheckBox) {
        var totalDictionaryOfNumber = [1: NIMONE1, 2: NIMONE2, 3: NIMONE3, 4: NIMONE4, 5: NIMONE5, 6: NIMONE6, 7: NIMONE7, 8: NIMONE8, 9: NIMONE9, 10: NIMONE10]
        if let num5 = number5!.text {
            if Int(num5) >= 2 && check5.isChecked == false {
                IfMoreThanOne.hidden = false
                for indexer in 1...10 {
                    if let checkOneNum = totalDictionaryOfNumber[indexer]{
                        if checkOneNum == NIMONE5 {
                            checkOneNum.hidden = false
                        } else {
                            checkOneNum.hidden = true
                        }
                    }
                }
            }
        }
    }
    @IBAction func check6(sender: CheckBox) {
        var totalDictionaryOfNumber = [1: NIMONE1, 2: NIMONE2, 3: NIMONE3, 4: NIMONE4, 5: NIMONE5, 6: NIMONE6, 7: NIMONE7, 8: NIMONE8, 9: NIMONE9, 10: NIMONE10]
        if let num6 = number6!.text {
            if Int(num6) >= 2 && check6.isChecked == false {
                IfMoreThanOne.hidden = false
                for indexer in 1...10 {
                    if let checkOneNum = totalDictionaryOfNumber[indexer]{
                        if checkOneNum == NIMONE6 {
                            checkOneNum.hidden = false
                        } else {
                            checkOneNum.hidden = true
                        }
                    }
                }
            }
        }
    }
    @IBAction func check7(sender: CheckBox) {
        var totalDictionaryOfNumber = [1: NIMONE1, 2: NIMONE2, 3: NIMONE3, 4: NIMONE4, 5: NIMONE5, 6: NIMONE6, 7: NIMONE7, 8: NIMONE8, 9: NIMONE9, 10: NIMONE10]
        if let num7 = number7!.text {
            if Int(num7) >= 2 && check7.isChecked == false {
                IfMoreThanOne.hidden = false
                for indexer in 1...10 {
                    if let checkOneNum = totalDictionaryOfNumber[indexer]{
                        if checkOneNum == NIMONE7 {
                            checkOneNum.hidden = false
                        } else {
                            checkOneNum.hidden = true
                        }
                    }
                }
            }
        }
    }
    @IBAction func check8(sender: CheckBox) {
        var totalDictionaryOfNumber = [1: NIMONE1, 2: NIMONE2, 3: NIMONE3, 4: NIMONE4, 5: NIMONE5, 6: NIMONE6, 7: NIMONE7, 8: NIMONE8, 9: NIMONE9, 10: NIMONE10]
        if let num8 = number8!.text {
            if Int(num8) >= 2 && check8.isChecked == false {
                IfMoreThanOne.hidden = false
                for indexer in 1...10 {
                    if let checkOneNum = totalDictionaryOfNumber[indexer]{
                        if checkOneNum == NIMONE8 {
                            checkOneNum.hidden = false
                        } else {
                            checkOneNum.hidden = true
                        }
                    }
                }
            }
        }
    }
    @IBAction func check9(sender: CheckBox) {
        var totalDictionaryOfNumber = [1: NIMONE1, 2: NIMONE2, 3: NIMONE3, 4: NIMONE4, 5: NIMONE5, 6: NIMONE6, 7: NIMONE7, 8: NIMONE8, 9: NIMONE9, 10: NIMONE10]
        if let num9 = number9!.text {
            if Int(num9) >= 2 && check9.isChecked == false {
                IfMoreThanOne.hidden = false
                for indexer in 1...10 {
                    if let checkOneNum = totalDictionaryOfNumber[indexer]{
                        if checkOneNum == NIMONE9 {
                            checkOneNum.hidden = false
                        } else {
                            checkOneNum.hidden = true
                        }
                    }
                }
            }
        }
    }
    @IBAction func check10(sender: CheckBox) {
        var totalDictionaryOfNumber = [1: NIMONE1, 2: NIMONE2, 3: NIMONE3, 4: NIMONE4, 5: NIMONE5, 6: NIMONE6, 7: NIMONE7, 8: NIMONE8, 9: NIMONE9, 10: NIMONE10]
        if let num10 = number10!.text {
            if Int(num10) >= 2 && check10.isChecked == false {
                IfMoreThanOne.hidden = false
                for indexer in 1...10 {
                    if let checkOneNum = totalDictionaryOfNumber[indexer]{
                        if checkOneNum == NIMONE10 {
                            checkOneNum.hidden = false
                        } else {
                            checkOneNum.hidden = true
                        }
                    }
                }
            }
        }
    }
    

    
    
    @IBAction func addition(sender: UIButton) {
        //totalDiciton1 -> the amount of money of each dishes
        var totalDiction1 = [1: money1, 2: money2, 3: money3, 4: money4, 5: money5, 6: money6, 7: money7, 8: money8, 9: money9, 10: money10]
        
        //totalDiction2 -> the number of each dishes
        var totalDiction2 = [1: number1, 2: number2, 3: number3, 4: number4, 5: number5, 6: number6, 7: number7, 8: number8, 9: number9, 10: number10]
        
        //totalDiction3 -> the checkboxes
        var totalDiction3 = [1: check1, 2: check2, 3: check3, 4: check4, 5: check5, 6: check6, 7: check7, 8: check8, 9: check9, 10: check10]
        
        //totalDictionaryOfNumber -> the "text" in subview for number of each dishes
        var totalDictionaryOfNumber = [1: NIMONE1, 2: NIMONE2, 3: NIMONE3, 4: NIMONE4, 5: NIMONE5, 6: NIMONE6, 7: NIMONE7, 8: NIMONE8, 9: NIMONE9, 10: NIMONE10]
        
        //"var" for the initials
        var totalSum = 0
        var test = 0
        var myTotalSum1 = 0
        var myTest1 = 0
        var myTotalSum2 = 0
        var myTest2 = 0
        
        //Calculation!!!
        for iindex in 1...10 { //總共10次
            if let iindex1 = Int(totalDiction1[iindex]!.text!){//如果iindex1(價格) != nil
                if let iindex2 = Int(totalDiction2[iindex]!.text!){//如果iindex2(數量) != nil
                        test = iindex1 * iindex2 //加點單項金額
                        totalSum += test //加點總和
                    if let iindex3 = totalDiction3[iindex]!{ //如果iindex3(勾勾) != nil
                        if iindex3.isChecked { //勾勾.ischecked
                            if let iindex4 = totalDictionaryOfNumber[iindex]!{//如果iindex4(個人單點數量) != nil
                                if iindex2 >= 2 { //如果iindex2(數量) >= 2
                                    myTest1 = iindex1 * Int(iindex4.text!)!
                                    myTotalSum1 += myTest1
                                } else if iindex2 == 1 { //如果iindex2(數量) = 1
                                    myTest2 = iindex1 * iindex2 //iindex1(金額)*iindex2(數量=1)
                                    myTotalSum2 += myTest2
                                }
                            }
                        }
                    }
                }
            }
        }
        // the sum of all dishes && the sum of individual dishes
        totaltotal.text = String(totalSum) //all
        myTotal.text = String(myTotalSum1 + myTotalSum2) //individual
    }
    
    
}//end of Class secondviewcontroller





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

