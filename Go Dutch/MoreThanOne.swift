//
//  MoreThanOne.swift
//  Go Dutch
//
//  Created by Sunny on 2016/8/19.
//  Copyright © 2016年 Sunny. All rights reserved.
//

import UIKit

class MoreThanOne: UIView {
    @IBOutlet weak var numberOfAddition: UITextField!
    
    
    @IBOutlet weak var confirmBack: UIButton!
    @IBAction func confirmAndBack(sender: AnyObject) {
        if let personalAddition = Int(numberOfAddition.text!) {
            
        }
    }

    @IBOutlet var view: UIView!
    
    required init?(coder aDecorder: NSCoder){
        super.init(coder: aDecorder)
        NSBundle.mainBundle().loadNibNamed("MoreThanOne", owner: self, options: nil)
        self.addSubview(self.view)
    }
}

