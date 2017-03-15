//
//  CXPen.swift
//  p1
//
//  Created by Mac on 2017. 3. 14..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

class CXPen : CustomStringConvertible {
    private var brand : String
    private var color : String
    private var usage : Int
    
    init(withBrand : String) {
        self.brand = withBrand
        color = "none"
        usage = 0
    }
    
    func getBrand() -> String {
        return brand
    }
    func getColor() -> String {
        return color
    }
    func getUsage() -> Int {
        return usage
    }
    
    func setBrand(_ new : String) {
        self.brand = new
    }
    func setColor(_ new : String) {
        self.color = new
    }
    func setUsage(_ new : Int) {
        self.usage = new
    }
    
    func printDescription(){
        print("Brand: ", brand)
        print("Color: ", color)
        print("Usage: ", usage)
        }
    var description: String {
        return "\(brand)"
    }
}
