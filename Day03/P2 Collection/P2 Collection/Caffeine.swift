//
//  Caffeine.swift
//  P2 Collection
//
//  Created by Mac on 2017. 3. 16..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

class Caffeine : Beverages {
    private var caffeine : Int
    
    init(caffeine : Int, manu: String, amount: Int, price: Int, name: String) {
        self.caffeine = caffeine
        super.init(manu: manu, amount: amount, price: price, name: name)
    }
}
