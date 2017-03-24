//
//  ViewController.swift
//  AutoLayout
//
//  Created by Mac on 2017. 3. 23..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topViewHeight: NSLayoutConstraint!
    
    @IBOutlet weak var splitView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let pan = UIPanGestureRecognizer(target: self, action: #selector(self.gesture))
        self.splitView.addGestureRecognizer(pan)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func gesture(rec: UIPanGestureRecognizer) {
        if rec.location(in: self.view).y >= 80 {
            topViewHeight.constant = rec.location(in: self.view).y
        }
    }
}

