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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
