//
//  MilestonesHomeViewController.swift
//  CS247App
//
//  Created by Vivek on 3/9/16.
//  Copyright © 2016 CS247. All rights reserved.
//

import UIKit

class MilestonesHomeViewController: UIViewController {
    
    @IBOutlet weak var milestone2Button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func milestone2ButtonAction(sender: AnyObject) {
        // If this milestone is shown, then segue to milestone2 view.
    }
    
}

