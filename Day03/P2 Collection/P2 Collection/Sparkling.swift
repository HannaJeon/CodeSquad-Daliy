//
//  Sparkling.swift
//  P2 Collection
//
//  Created by Mac on 2017. 3. 17..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

class Sparkling : Beverages {
    private var sparkling : Int
    
    init(sparkling : Int, manu: String, amount: Int, price: Int, name: String) {
        self.sparkling = sparkling
        super.init(manu: manu, amount: amount, price: price, name: name)
    }
}
