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
    let sprite = Beverages(manu: "B", amount: 250, price: 2000, name: "Sprite")
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        NotificationCenter.default.addObserver(self, selector: self.setLabel, name: "stock", object: nil)
        print(coke == sprite)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func add() {
        vm.setBeverage(name: coke.getName(), price: coke.getPrice(), stock: 5)
        vm.setBeverage(name: sprite.getName(), price: sprite.getPrice(), stock: 5)
    }
    
    func remove() {
        vm.purchableList(money: 5000)
        vm.buyDrink(name: "Coke")
    }
    
    func setLabel() {
        cokeLabel.text.
    }

   
    @IBAction func cokeButton(_ sender: UIButton) {
        vm.setBeverage(name: coke.getName(), price: coke.getPrice(), stock: 1)
    }
    
    @IBAction func spriteButton(_ sender: UIButton) {
        vm.setBeverage(name: sprite.getName(), price: sprite.getPrice(), stock: 1)
    }
    
    @IBOutlet weak var cokeLabel: UILabel!
    
    @IBOutlet weak var spriteLabel: UILabel!
    
}

