//
//  ExerciseViewController.swift
//  CS247App
//
//  Created by Vivek on 3/9/16.
//  Copyright © 2016 CS247. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {
    
    @IBOutlet weak var exerciseImage: UIImageView!
    @IBOutlet weak var doneExerciseButton: UIButton!
    
    var exerciseType: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (exerciseType! == Globals.SQUATS) {
            exerciseImage.image = UIImage(named: "squats")
        } else if (exerciseType! == Globals.LEGEXTS) {
            exerciseImage.image = UIImage(named: "leg-ext")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneExerciseButtonAction(sender: AnyObject) {
        
        if (exerciseType! == Globals.SQUATS) {
            Globals.hasDoneSquats = true
        } else if (exerciseType! == Globals.LEGEXTS) {
            Globals.hasDoneLegExts = true
        }

        performSegueWithIdentifier("exerciseToExercisesHome", sender: nil)

    }
}

