//
//  createsecondviewcontrollerViewController.swift
//  Go Dutch
//
//  Created by Sunny on 2016/8/11.
//  Copyright © 2016年 Sunny. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    
    @IBOutlet weak var num1: UILabel!
    @IBOutlet weak var num2: UILabel!
    @IBOutlet weak var num3: UILabel!
    @IBOutlet weak var num4: UILabel!
    @IBOutlet weak var num5: UILabel!
    @IBOutlet weak var num6: UILabel!
    @IBOutlet weak var num7: UILabel!
    @IBOutlet weak var num8: UILabel!
    @IBOutlet weak var num9: UILabel!
    @IBOutlet weak var num10: UILabel!
    @IBOutlet weak var num11: UILabel!
    @IBOutlet weak var num12: UILabel!
    
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
    @IBOutlet weak var labeltest: UILabel!
    var LabelText = String()
    
    @IBAction func hideStacks(sender: UIButton) {
        usingDictionary()
    }
    
    
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
    
    
    @IBOutlet weak var xxyy: UIStackView!
    
    @IBOutlet weak var xx: UITextField!
    
    @IBOutlet weak var yy: UITextField!
  
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController : ViewController = segue.destinationViewController as! ViewController
            DestViewController.labeltestcatch = xx.text!
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
