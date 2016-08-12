//
//  createsecondviewcontrollerViewController.swift
//  Go Dutch
//
//  Created by Sunny on 2016/8/11.
//  Copyright © 2016年 Sunny. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
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
    @IBOutlet weak var money11: UITextField!
    @IBOutlet weak var money12: UITextField!
    
    
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
    @IBOutlet weak var number11: UITextField!
    @IBOutlet weak var number12: UITextField!
    
    
    
    
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
    @IBOutlet weak var stack11: UIStackView!
    @IBOutlet weak var stack12: UIStackView!
    ////
    
    
  //  @IBOutlet weak var check1: CheckBox!
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
    @IBOutlet weak var check11: CheckBox!
    @IBOutlet weak var check12: CheckBox!
    
    
    
    
    @IBOutlet weak var labeltest: UILabel!
    var LabelText = String()
    
    
    @IBOutlet weak var totaltotal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usingDictionary()
        //
        labeltest.text = LabelText
        //

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //////////
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController : ViewController = segue.destinationViewController as! ViewController
        
    }

   /////////
    
    
    
   /*
    @IBAction func moveData(sender: UIButton) {
        var moveDatas = [1: num1, 2: num2, 3: num3, 4: num4, 5: num5, 6: num6, 7: num7, 8: num8, 9: num9, 10: num10, 11: num11, 12: num12]
        
        
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController : ViewController = segue.destinationViewController as! ViewController
        DestViewController.LabelText = numberOfSlider.text!
    }
    
*/
    
   
    
    @IBAction func addition(sender: UIButton) {
        var totalDiction1 = [1: money1, 2: money2, 3: money3, 4: money4, 5: money5, 6: money6, 7: money7, 8: money8, 9: money9, 10: money10, 11: money11, 12: money12]
        var totalDiction2 = [1: number1, 2: number2, 3: number3, 4: number4, 5: number5, 6: number6, 7: number7, 8: number8, 9: number9, 10: number10, 11: number11, 12: number12]
        var totalDiction3 = [1: check1, 2: check2, 3: check3, 4: check4, 5: check5, 6: check6, 7: check7, 8: check8, 9: check9, 10: number10, 11: check11, 12: check12]
        
        if let counter = Int(LabelText){
            for iindex in 1...12 {
                if let iindex1 = Int(totalDiction1[iindex]!.text!){
                    if let iindex2 = Int(totalDiction2[iindex]!.text!){
                        var test = iindex1 * iindex2
                        //if (check1.isChecked == true)
                       // {
                           // totaltotal.text = (String)(test)
                           // mytotal.text
                       // }

                    }
                }
            }
        }
        
    }
    
    func usingDictionary(){
        var diction = [1: stack1, 2: stack2, 3: stack3, 4: stack4, 5: stack5, 6: stack6, 7: stack7, 8: stack8, 9: stack9, 10: stack10, 11: stack11, 12: stack12]
        if let counter = Int(LabelText){ //viewcontroller多少就多少
            for index in 1...12{//因為diction有12個
                if let stackIndex = diction[index]{//stack[index] = stack[1~12]
                    if counter < index {
                        stackIndex.hidden = true
                    }
                }
            }
        }
    }

    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

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

