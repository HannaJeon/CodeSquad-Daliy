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
    private var getList = [String : Int]()
    
//    - 특정 음료를 추가하는 함수
    func setBeverage(name: String, price: Int, stock: Int) {
        if let key = beverages[name] {
            beverages[name] = key + stock
        } else {
            beverages[name] = stock
            self.price[name] = price
        }
    }
    
//    - 전체 음료수 재고를 (사전으로 표현하는) 종류별로 리턴하는 함수
    func check() -> Dictionary<String, Int> {
        print("재고현황 : \(beverages)")
        return beverages
    }
    
//    - 금액을 입력하면 구매가능한 음료 목록을 리턴하는 함수
    func purchableList(money: Int) -> [String : String] {
        self.money = money
        var result = [String : String]()
        for (key, value) in price {
            if money >= value {
                result[key] = "\(value)원"
            }
        }
        return result
    }
    
//    - 특정 음료를 구매하면 잔액을 리턴하는 함수
    func buyDrink(name : String) -> String {
        // 잔액
        for (key, val) in price {
            if name == key {
                if money >= val {
                    money -= val
                    getList[name] = val
                    if let stock = beverages[name] {
                        beverages[name] = stock - 1
                    } else {
                        print("재고가 없습니다")
                    }
                } else {
                    print("잔액이 부족합니다")
                }
            }
        }
        // 재고관리
        if beverages[name] == 0 {
            beverages.removeValue(forKey: name)
        }
        return "남은 잔액은 \(money)원입니다"
    }
    
//    - 실행 이후 구매한 음료 이름과 금액을 사전으로 추상화하고 전체 구매 목
//    록을 배열로 리턴하는 함수
    func getDrinkList() -> [String] {
        var list = [String]()
        for key in getList.keys {
            list.append(key)
        }
        return list
    }
}
