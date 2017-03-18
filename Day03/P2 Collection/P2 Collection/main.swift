//
//  main.swift
//  P2 Collection
//
//  Created by Mac on 2017. 3. 16..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

let coke = Sparkling(sparkling: 20, manu: "A", amount: 250, price: 1600, name: "Coke")

let sprite = Sparkling(sparkling: 15, manu: "B", amount: 500, price: 2000, name: "Sprite")

let mountinDue = Sparkling(sparkling: 20, manu: "A", amount: 250, price: 1700, name: "MountinDue")

let coffee = Caffeine(caffeine: 15, manu: "B", amount: 250, price: 3000, name: "TOP")

let hotSix = Caffeine(caffeine: 20, manu: "B", amount: 250, price: 2500, name: "HotSix")


let a = VendingMachine()
a.setBeverage(name: coke.getName(), price: coke.getPrice())
a.setBeverage(name: coke.getName(), price: coke.getPrice())
print(a.setBeverage(name: sprite.getName(), price: sprite.getPrice()))

print(a.check())
print(a.purchableList(money: 1800))
