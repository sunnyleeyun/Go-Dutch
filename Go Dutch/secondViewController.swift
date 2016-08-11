//
//  createsecondviewcontrollerViewController.swift
//  Go Dutch
//
//  Created by Sunny on 2016/8/11.
//  Copyright © 2016年 Sunny. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet weak var labeltest: UILabel!
    
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
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func stepperstest(sender: UIStepper) {
        self.labeltest.text = String(Int(sender.value))
        
    }
    
    
    @IBAction func stepper1(sender: UIStepper) {
        self.num1.text = String(Int(sender.value))
    }
    
    @IBAction func stepper2(sender: UIStepper) {
        self.num2.text = String(Int(sender.value))
    }
    
    @IBAction func stepper3(sender: UIStepper) {
        self.num3.text = String(Int(sender.value))
    }
    
    @IBAction func stepper4(sender: UIStepper) {
        self.num4.text = String(Int(sender.value))
    }
    
    @IBAction func stepper5(sender: UIStepper) {
        self.num5.text = String(Int(sender.value))
    }
    
    @IBAction func stepper6(sender: UIStepper) {
        self.num6.text = String(Int(sender.value))
    }

    @IBAction func stepper7(sender: UIStepper) {
        self.num7.text = String(Int(sender.value))
    }
    
    @IBAction func stepper8(sender: UIStepper) {
        self.num8.text = String(Int(sender.value))
    }
    
    @IBAction func stepper9(sender: UIStepper) {
        self.num9.text = String(Int(sender.value))
    }
    
    @IBAction func stepper10(sender: UIStepper) {
        self.num10.text = String(Int(sender.value))
    }
    
    
    @IBAction func stepper11(sender: UIStepper) {
        self.num11.text = String(Int(sender.value))
    }
    
    
    @IBAction func stepper12(sender: UIStepper) {
        self.num12.text = String(Int(sender.value))
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
