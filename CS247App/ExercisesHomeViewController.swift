//
//  ExercisesHomeViewController.swift
//  CS247App
//
//  Created by Vivek on 3/9/16.
//  Copyright © 2016 CS247. All rights reserved.
//

import UIKit

class ExercisesHomeViewController: UIViewController {
    
    @IBOutlet weak var exercisesHomeImage: UIImageView!
    @IBOutlet weak var squatsButton: UIButton!
    @IBOutlet weak var legExtButton: UIButton!
    
    var exerciseType: Int?
    var clickedExercise: Bool?

    override func viewDidLoad() {
        super.viewDidLoad()
        clickedExercise = false
        
        if (Globals.hasDoneSquats && Globals.hasDoneLegExts) {
            // Load exercises-all-done.png and set timer to get notification.
            exercisesHomeImage.image = UIImage(named: "exercises-all-done")
            
            if (!Globals.hasGottenMilestone) {
                Globals.hasGottenMilestone = true
                let _ = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "segueToMilestonesNotification", userInfo: nil, repeats: false)
            }
        } else if (Globals.hasDoneSquats) {
            exercisesHomeImage.image = UIImage(named: "exercises-home-squats-done")
        } else if (Globals.hasDoneLegExts) {
            exercisesHomeImage.image = UIImage(named: "exercises-home-leg-ext-done")
        } else {
            exercisesHomeImage.image = UIImage(named: "exercises-home")
        }
        
    }
    
    override func viewDidAppear(animated: Bool) {
        if (Globals.hasDoneSquats) {
            // Move the button up.
            legExtButton.frame = CGRectMake(
                legExtButton.frame.origin.x,
                legExtButton.frame.origin.y - legExtButton.frame.height,
                legExtButton.frame.size.width,
                legExtButton.frame.size.height)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func squatsButtonAction(sender: AnyObject) {
        if (!Globals.hasDoneSquats) {
            // If button is active, then segue to exercise
            // with parameter.
            clickedExercise = true
            self.exerciseType = Globals.SQUATS
            performSegueWithIdentifier("exercisesHomeToExercise", sender: nil)
        }
    }

    @IBAction func legExtButtonAction(sender: AnyObject) {
        if (!Globals.hasDoneLegExts) {
            // If button is active, then segue to exercise
            // with parameter.
            clickedExercise = true
            self.exerciseType = Globals.LEGEXTS
            performSegueWithIdentifier("exercisesHomeToExercise", sender: nil)
        }
    }
    
    func segueToMilestonesNotification() {
        performSegueWithIdentifier("exercisesHomeToMilestoneNotification", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if ((clickedExercise) != nil && clickedExercise!) {
            let destinationVC = segue.destinationViewController as! ExerciseViewController
            destinationVC.exerciseType = self.exerciseType
        }
    }
}
