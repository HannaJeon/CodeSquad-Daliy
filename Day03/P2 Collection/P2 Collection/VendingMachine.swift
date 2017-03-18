//
//  VendingMachine.swift
//  P2 Collection
//
//  Created by Mac on 2017. 3. 17..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

class VendingMachine {
    private var beverages : [String : Int] = [:]
    private var price : [String : Int] = [:]
    private var money : Int = 0
    
//    - 특정 음료를 추가하는 함수
    func setBeverage(name: String, price: Int) {
        if let key = beverages[name] {
            beverages[name] = key + 1
        } else {
            beverages[name] = 1
            self.price[name] = price
        }
    }
    
//    - 전체 음료수 재고를 (사전으로 표현하는) 종류별로 리턴하는 함수
    func check() -> Dictionary<String, Int> {
        return beverages
    }
    
//    - 금액을 입력하면 구매가능한 음료 목록을 리턴하는 함수
    func purchableList(money: Int) -> [String] {
        self.money = money
        var result = [String]()
        for (key, value) in price {
            if money >= value {
                result.append(key)
            }
        }
        return result
    }
    
//    - 특정 음료를 구매하면 잔액을 리턴하는 함수
    func buyDrink(name : String) -> Int {
        for (key, val) in beverages {
            if name == key {
                if let stock = beverages[name] {
                    beverages[name] = key - 1
                }
            }
            if val == 0 {
                beverages.removeValue(forKey: key)
            }
        }
    }
//    - 실행 이후 구매한 음료 이름과 금액을 사전으로 추상화하고 전체 구매 목
//    록을 배열로 리턴하는 함수
    
}
