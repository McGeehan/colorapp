//
//  ColorViewController.swift
//  Color App
//
//  Created by Matthew McGeehan on 1/13/16.
//  Copyright © 2016 McGeehan Coding. All rights reserved.
//

import UIKit

class ColorViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        if self.view.backgroundColor == UIColor.redColor() {
            self.colorLabel.text = "RED!"
        } else if self.view.backgroundColor == UIColor.blueColor() {
            self.colorLabel.text = "BLUE!"
        } else if self.view.backgroundColor == UIColor(red: 232/255, green: 132/255, blue: 255/255, alpha: 1.0) {
            self.colorLabel.text = "PINK!"
        } else if self.view.backgroundColor == UIColor.purpleColor() {
            self.colorLabel.text = "Purple!"
        } else if self.view.backgroundColor == UIColor.blackColor() {
            self.colorLabel.text = "Black!"
        } else if self.view.backgroundColor == UIColor.yellowColor() {
            self.colorLabel.text = "Yellow!"
        }
    }

}

