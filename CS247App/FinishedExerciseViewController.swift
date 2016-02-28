//
//  ViewController.swift
//  CS247App
//
//  Created by Vivek on 2/28/16.
//  Copyright © 2016 CS247. All rights reserved.
//

import UIKit

class FinishedExerciseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let toSocialNotification = UIButton(frame: CGRectMake(100, 100, 100, 50))
        toSocialNotification.backgroundColor = UIColor.grayColor()
        toSocialNotification.setTitle("Next", forState: UIControlState.Normal)
        toSocialNotification.addTarget(self, action: "toSocialNotification:", forControlEvents: .TouchUpInside)
        self.view.addSubview(toSocialNotification)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func toSocialNotification(sender: AnyObject) {
        performSegueWithIdentifier("toSocialNotification", sender: sender)
    }
    
    
}

