//
//  SecondViewController.swift
//  P3 Tapbar
//
//  Created by Mac on 2017. 3. 17..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    private var location : Double = Double()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        let touch = touches.first! as UITouch
        location = Double(touch.location(in: self.view).y)
//        print("touch: \(touch)")
//        print("location began: \(location)")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        
        let touch = touches.first
        location = Double((touch?.location(in: self.view).y)!)
        
        if Int(location) % 5 == 0 {
            self.view.alpha -= 0.05
        }
//        print("location moved: \(location)")
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        self.view.alpha = 1
    }

}
