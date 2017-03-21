//
//  Beverages.swift
//  P2 Collection
//
//  Created by Mac on 2017. 3. 16..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

class Beverages{
    private let manufacturer : String
    private var amount : Int
    private let price : Int
    private let name : String
    private let date : Date

    
     init(manu: String, amount: Int, price: Int, name: String) {
        self.manufacturer = manu
        self.amount = amount
        self.price = price
        self.name = name
        self.date = Date(timeInterval: 32400, since: Date())
    }
    
    func getName() -> String {
        return name
    }
    func getPrice() -> Int {
        return price
    }
}
