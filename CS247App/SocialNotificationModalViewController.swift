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
//        view.backgroundColor = UIColor.clearColor()
//        view.opaque = false
        print("Modal loaded")
        
        let toSocialNotification = UIButton(frame: CGRectMake(100, 100, 100, 50))
        toSocialNotification.backgroundColor = UIColor.grayColor()
        toSocialNotification.setTitle("Next", forState: UIControlState.Normal)
        self.view.addSubview(toSocialNotification)
    }
}
