//
//  ViewController.swift
//  TestCodeSwift
//
//  Created by Vien Vu  on 12/21/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
        let customView = CutomViewDemo(frame:CGRectMake(0, 0, 200, 60))
        customView.translatesAutoresizingMaskIntoConstraints = false
        
        customView.label1.text = "label 1"
        customView.label2.text = "label 2"
       
        self.view.addSubview(customView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   


}

