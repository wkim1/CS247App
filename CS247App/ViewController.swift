//
//  ViewController.swift
//  CS247App
//
//  Created by Vivek on 2/28/16.
//  Copyright © 2016 CS247. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let chooseExerciseButton   = UIButton(frame: CGRectMake(100, 100, 100, 50))
        chooseExerciseButton.backgroundColor = UIColor.grayColor()
        chooseExerciseButton.setTitle("Go to exercise", forState: UIControlState.Normal)
        chooseExerciseButton.addTarget(self, action: "toExercise:", forControlEvents: .TouchUpInside)
        self.view.addSubview(chooseExerciseButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func toExercise(sender: AnyObject) {
        performSegueWithIdentifier("toExercise", sender: sender)
    }


}

