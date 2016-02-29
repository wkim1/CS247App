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

        let exerciseListImage: UIImage = UIImage(named: "ExercisesList")!
        let exerciseListImageView = UIImageView(image: exerciseListImage)
        
        // Set dimensions to full size of iPhone 6 Plus screen.
        exerciseListImageView.frame = CGRectMake(0, 0, 414, 736)
        self.view.addSubview(exerciseListImageView)
        
        
        let chooseExerciseButton   = UIButton(frame: CGRectMake(280, 130, 100, 50))
        chooseExerciseButton.backgroundColor = UIColor.grayColor()
        chooseExerciseButton.setTitle("Do this", forState: UIControlState.Normal)
        chooseExerciseButton.addTarget(self, action: "toExercise:", forControlEvents: .TouchUpInside)
        self.view.addSubview(chooseExerciseButton)
        
        let chooseExerciseButton2   = UIButton(frame: CGRectMake(280, 210, 100, 50))
        chooseExerciseButton2.backgroundColor = UIColor.grayColor()
        chooseExerciseButton2.setTitle("Do this", forState: UIControlState.Normal)
        chooseExerciseButton2.addTarget(self, action: "toExercise:", forControlEvents: .TouchUpInside)
        self.view.addSubview(chooseExerciseButton2)
        
        let chooseExerciseButton3   = UIButton(frame: CGRectMake(280, 290, 100, 50))
        chooseExerciseButton3.backgroundColor = UIColor.grayColor()
        chooseExerciseButton3.setTitle("Do this", forState: UIControlState.Normal)
        chooseExerciseButton3.addTarget(self, action: "toExercise:", forControlEvents: .TouchUpInside)
        self.view.addSubview(chooseExerciseButton3)
        
        let chooseExerciseButton4   = UIButton(frame: CGRectMake(280, 370, 100, 50))
        chooseExerciseButton4.backgroundColor = UIColor.grayColor()
        chooseExerciseButton4.setTitle("Do this", forState: UIControlState.Normal)
        chooseExerciseButton4.addTarget(self, action: "toExercise:", forControlEvents: .TouchUpInside)
        self.view.addSubview(chooseExerciseButton4)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func toExercise(sender: AnyObject) {
        performSegueWithIdentifier("toExercise", sender: sender)
    }


}

