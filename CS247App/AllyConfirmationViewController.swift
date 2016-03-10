//
//  AllyConfirmationViewController.swift
//  CS247App
//
//  Created by Vivek on 3/9/16.
//  Copyright © 2016 CS247. All rights reserved.
//

import UIKit

class AllyConfirmationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let _ = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "segueToExercisesHome", userInfo: nil, repeats: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func segueToExercisesHome() {
        performSegueWithIdentifier("allyConfirmationToExercisesHome", sender: nil)
    }

}

