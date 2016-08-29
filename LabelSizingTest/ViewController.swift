//
//  ViewController.swift
//  LabelSizingTest
//
//  Created by Logan Moseley on 8/29/16.
//  Copyright © 2016 The New York Times Company. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var containerWidthConstraint: NSLayoutConstraint!
    
    var containerFullWidth: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containerFullWidth = containerWidthConstraint.constant
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func slideValueChanged(sender: UISlider) {
        containerWidthConstraint.constant = containerFullWidth * CGFloat(sender.value)
    }

}

