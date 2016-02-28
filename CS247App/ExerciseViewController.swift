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

        let exerciseImage: UIImage = UIImage(named: "exercise")!
        let exerciseImageView = UIImageView(image: exerciseImage)
        
        // Set dimensions to full size of iPhone 6 Plus screen.
        exerciseImageView.frame = CGRectMake(0, 0, 414, 736)
        self.view.addSubview(exerciseImageView)

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

