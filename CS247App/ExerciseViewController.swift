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
        
        if (exerciseType! == 1) {
            exerciseImage.image = UIImage(named: "squats")
        } else if (exerciseType! == 2) {
            exerciseImage.image = UIImage(named: "leg-ext")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneExerciseButtonAction(sender: AnyObject) {
        // TODO: Check which exercise was done and set global var.
        performSegueWithIdentifier("exerciseToExercisesHome", sender: nil)

    }
}

