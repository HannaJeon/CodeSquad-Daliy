//
//  ViewController.swift
//  MyVending
//
//  Created by Mac on 2017. 3. 21..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let vm = VendingMachine()
    
    let coke = Beverages(manu: "A", amount: 250, price: 2000, name: "Coke")
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        NotificationCenter.default.addObserver(self, selector: VendingMachine.check, name: "stock", object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func add() {
        vm.setBeverage(name: coke.getName(), price: coke.getPrice(), stock: 5)
    }
    
    func remove() {
        vm.purchableList(money: 5000)
        vm.buyDrink(name: "Coke")
    }

   
    @IBAction func cokeButton(_ sender: Any) {
        add()
    }
    
    @IBOutlet weak var cokeLabel: UILabel!
}

