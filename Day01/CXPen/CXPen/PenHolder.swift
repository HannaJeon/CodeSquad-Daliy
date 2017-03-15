//
//  PenHolder.swift
//  CXPen
//
//  Created by Mac on 2017. 3. 15..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

class PenHolder {
    private var pens = [CXPen]()
    private var usage : Int
    private let capacity : Int
    
    init(withCapacity : Int) {
        usage = 0
        capacity = withCapacity
    }
    
    func add(pen : CXPen) {
        pens.append(pen)
        usage = Int(Double(pens.count) / Double(capacity) * 100)
    }
    func remove(penIndex : Int) {
        pens.remove(at: penIndex)
        usage = Int(Double(pens.count) / Double(capacity) * 100)
    }
    func usagePenholder() -> Int {
        return usage
    }
    func printDescripttion() {
        print("usagePenholder: ", usagePenholder(), "%")
        print(pens)
    }
}
