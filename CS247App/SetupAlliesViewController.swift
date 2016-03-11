//
//  SetupAlliesViewController.swift
//  CS247App
//
//  Created by Vivek on 3/9/16.
//  Copyright © 2016 CS247. All rights reserved.
//

import UIKit

class SetupAlliesViewController: UIViewController {
    
    @IBOutlet weak var checkbox1: UIButton!
    @IBOutlet weak var checkbox2: UIButton!
    @IBOutlet weak var checkbox3: UIButton!
    
    var checked1 = false
    var checked2 = false
    var checked3 = false
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func checkbox1Action(sender: AnyObject) {
        if (checked1) {
            checkbox1.setImage(UIImage(named: "checkbox-unchecked"), forState: UIControlState.Normal)
        }
        else {
            checkbox1.setImage(UIImage(named: "checkbox-checked"), forState: UIControlState.Normal)
        }
        checked1 = !checked1
    }
    @IBAction func checkbox2Action(sender: AnyObject) {
        if (checked2) {
            checkbox2.setImage(UIImage(named: "checkbox-unchecked"), forState: UIControlState.Normal)
        }
        else {
            checkbox2.setImage(UIImage(named: "checkbox-checked"), forState: UIControlState.Normal)
        }
        checked2 = !checked2
    }
    @IBAction func checkbox3Action(sender: AnyObject) {
        if (checked3) {
            checkbox3.setImage(UIImage(named: "checkbox-unchecked"), forState: UIControlState.Normal)
        }
        else {
            checkbox3.setImage(UIImage(named: "checkbox-checked"), forState: UIControlState.Normal)
        }
        checked3 = !checked3
    }
}

