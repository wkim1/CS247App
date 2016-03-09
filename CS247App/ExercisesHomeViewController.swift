//
//  ExercisesHomeViewController.swift
//  CS247App
//
//  Created by Vivek on 3/9/16.
//  Copyright © 2016 CS247. All rights reserved.
//

import UIKit

class ExercisesHomeViewController: UIViewController {
    
    @IBOutlet weak var squatsButton: UIButton!
    @IBOutlet weak var legExtButton: UIButton!
    
    var exerciseType: Int?
    var clickedExercise: Bool?

    override func viewDidLoad() {
        super.viewDidLoad()
        clickedExercise = false
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func squatsButtonAction(sender: AnyObject) {
        // If button is active, then segue to exercise
        // with parameter.
        clickedExercise = true
        self.exerciseType = 1
        performSegueWithIdentifier("exercisesHomeToExercise", sender: nil)
    }

    @IBAction func legExtButtonAction(sender: AnyObject) {
        // If button is active, then segue to exercise
        // with parameter.
        clickedExercise = true
        self.exerciseType = 2
        performSegueWithIdentifier("exercisesHomeToExercise", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if ((clickedExercise) != nil && clickedExercise!) {
            let destinationVC = segue.destinationViewController as! ExerciseViewController
            destinationVC.exerciseType = self.exerciseType
        }
    }
}
