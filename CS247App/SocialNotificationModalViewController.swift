//
//  SocialNotificationModalViewController.swift
//  CS247App
//
//  Created by Vivek on 2/28/16.
//  Copyright © 2016 CS247. All rights reserved.
//

import UIKit

class SocialNotificationModalViewController: UIViewController {

    override func viewDidLoad() {
        view.backgroundColor = UIColor.clearColor()
        view.opaque = false
        
        let socialNotificationImage: UIImage = UIImage(named: "social-notification")!
        let socialNotificationImageView = UIImageView(image: socialNotificationImage)
        
        socialNotificationImageView.frame = CGRectMake(0, 0, 350, 500)
        self.view.addSubview(socialNotificationImageView)
        
//        let toStartButton = UIButton(frame: CGRectMake(100, 100, 100, 50))
//        toStartButton.backgroundColor = UIColor.grayColor()
//        toStartButton.setTitle("Back to start", forState: UIControlState.Normal)
//        toStartButton.addTarget(self, action: "toStart:", forControlEvents: .TouchUpInside)
//        self.view.addSubview(toStartButton)
        
    }
    
    override func viewWillLayoutSubviews() {
        // Set the size of the modal.
        super.viewWillLayoutSubviews()
        self.view.superview!.bounds = CGRectMake(0, 0, 350, 500);
    }
    
    
    @IBAction func toStart(sender: AnyObject) {
        // empty...
//        performSegueWithIdentifier("toStart", sender: sender)
    }
}
