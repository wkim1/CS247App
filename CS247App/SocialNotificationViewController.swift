//
//  ViewController.swift
//  CS247App
//
//  Created by Vivek on 2/28/16.
//  Copyright © 2016 CS247. All rights reserved.
//

import UIKit

class SocialNotificationViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let notificationLabel   = UILabel(frame: CGRectMake(100, 100, 100, 50))
        notificationLabel.backgroundColor = UIColor.grayColor()
        notificationLabel.text = "Social notification"
        self.view.addSubview(notificationLabel)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

