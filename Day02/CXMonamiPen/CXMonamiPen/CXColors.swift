//
//  CXRedPen.swift
//  CXMonamiPen
//
//  Created by Mac on 2017. 3. 15..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

class CXRedPen : CXMonamiPen {
    override init(withModel : String) {
        super.init(withModel: withModel)
        super.setColor("red")
    }
}

class CXBluePen : CXMonamiPen {
    override init(withModel : String) {
        super.init(withModel: withModel)
        super.setColor("blue")
    }
}

class CXBlackPen : CXMonamiPen {
    override init(withModel : String) {
        super.init(withModel: withModel)
        super.setColor("black")
    }
}
