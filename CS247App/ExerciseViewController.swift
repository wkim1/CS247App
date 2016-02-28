//
//  ViewController.swift
//  CS247App
//
//  Created by Vivek on 2/28/16.
//  Copyright © 2016 CS247. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let finishedExerciseButton   = UIButton(frame: CGRectMake(100, 100, 100, 50))
        finishedExerciseButton.backgroundColor = UIColor.grayColor()
        finishedExerciseButton.setTitle("Done", forState: UIControlState.Normal)
        finishedExerciseButton.addTarget(self, action: "toFinishedExercise:", forControlEvents: .TouchUpInside)
        self.view.addSubview(finishedExerciseButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func toFinishedExercise(sender: AnyObject) {
        performSegueWithIdentifier("toFinishedExercise", sender: sender)
    }
    
    
}

