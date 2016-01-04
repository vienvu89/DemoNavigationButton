//
//  ViewController.swift
//  TestCodeSwift
//
//  Created by Vien Vu  on 12/21/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var flagRight = false
    var flagLeft = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "backIcon@3x"), style: .Done, target: self, action: "rightTap")
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "left", style: .Done, target: self, action: "leftTap")
        
    }
    
    func rightTap() {
        if flagRight {
            self.navigationItem.rightBarButtonItem?.image = UIImage(named: "backIcon@3x")
            flagRight = false
        } else {
            flagRight = true
            self.navigationItem.rightBarButtonItem?.image = UIImage(named: "calendar-icons@3x")
        }
    }
    
    func leftTap() {
        if flagLeft {
            self.navigationItem.leftBarButtonItem?.title = "left"
            flagLeft = false
        } else {
            self.navigationItem.leftBarButtonItem?.title = "left change"
            flagLeft = true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

