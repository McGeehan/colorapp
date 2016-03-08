//
//  ViewController.swift
//  Color App
//
//  Created by Matthew McGeehan on 1/11/16.
//  Copyright © 2016 McGeehan Coding. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var selectedColor : UIColor?
    
    let colors : [UIColor] = [UIColor.redColor(), UIColor.blueColor(), UIColor(red: 232/255, green: 132/255, blue: 255/255, alpha: 1.0), UIColor.purpleColor(), UIColor.blackColor(), UIColor.yellowColor()]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = self.colors[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.selectedColor = self.colors[indexPath.row]
        
        print("Table Row Selected")
        
        self.performSegueWithIdentifier("toColorScreen", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toColorScreen" {
           segue.destinationViewController.view.backgroundColor = self.selectedColor
        }
    }
}

