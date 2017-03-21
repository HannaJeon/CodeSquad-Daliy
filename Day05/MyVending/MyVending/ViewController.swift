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
    
    @IBOutlet weak var cokeLabel: UILabel!
    @IBOutlet weak var spriteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.setLabel), name: NSNotification.Name(rawValue: "stock"), object: nil)
        let notif = Notification(name: Notification.Name("any"), object: nil, userInfo: vm.check())
        setLabel(notif: notif)

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
    
    func setLabel(notif : Notification) {
        let stock = notif.userInfo!
        if let coke = stock["Coke"] {
            cokeLabel.text = String(describing: coke)
        }
        if let sprite = stock["Sprite"] {
            spriteLabel.text = String(describing: sprite)
        }
    }

   
    @IBAction func cokeButton(_ sender: UIButton) {
        vm.setBeverage(name: coke.getName(), price: coke.getPrice(), stock: 1)
    }
    
    @IBAction func spriteButton(_ sender: UIButton) {
        vm.setBeverage(name: sprite.getName(), price: sprite.getPrice(), stock: 1)
    }
    
    
    
}

