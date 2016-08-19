//
//  MoreThanOne.swift
//  Go Dutch
//
//  Created by Sunny on 2016/8/19.
//  Copyright © 2016年 Sunny. All rights reserved.
//

import UIKit

class MoreThanOne: UIView {

    @IBOutlet var view: UIView!
    
    required init?(coder aDecorder: NSCoder){
        super.init(coder: aDecorder)
        NSBundle.mainBundle().loadNibNamed("MoreThanOne", owner: self, options: nil)
        self.addSubview(self.view)
    }
}

