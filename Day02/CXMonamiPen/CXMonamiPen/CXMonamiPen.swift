//
//  CXMonamiPen.swift
//  p1
//
//  Created by Mac on 2017. 3. 15..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

class CXMonamiPen : CXPen {
    private let model : String
    
    init(withModel : String) {
        model = withModel
        super.init(withBrand: "Monami")
    }
    
    func getModel() -> String {
        return model
    }
    
    override func printDescription() {
        print("brand : \(getBrand())\ncolor : \(getColor())\nusage : \(getUsage())\nmodel : \(model)\n")
    }
    

}
