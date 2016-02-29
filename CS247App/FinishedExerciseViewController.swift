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

        let exerciseImage: UIImage = UIImage(named: "finished-exercise")!
        let exerciseImageView = UIImageView(image: exerciseImage)

        // Set dimensions to full size of iPhone 6 Plus screen.
        exerciseImageView.frame = CGRectMake(0, 0, 414, 736)
        self.view.addSubview(exerciseImageView)

        // Show a modal after some seconds.
        NSTimer.scheduledTimerWithTimeInterval(NSTimeInterval(5), target: self, selector: "showModal", userInfo: nil, repeats: false)

    }

    func showModal() {
        let modalViewController = SocialNotificationModalViewController()
        modalViewController.modalPresentationStyle = .FormSheet
        presentViewController(modalViewController, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

