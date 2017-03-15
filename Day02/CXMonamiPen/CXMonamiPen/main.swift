//
//  main.swift
//  CXMonamiPen
//
//  Created by Mac on 2017. 3. 15..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

var pen1 = CXRedPen(withModel: "EX-11")
pen1.printDescription()
var pen2 = CXRedPen(withModel: "EX-12")
pen2.printDescription()

var pen3 = CXBluePen(withModel: "EX-13")
pen3.printDescription()
var pen4 = CXBluePen(withModel: "EX-14")
pen4.printDescription()
var pen5 = CXBluePen(withModel: "EX-15")
pen5.printDescription()
var pen6 = CXBluePen(withModel: "EX-16")
pen6.printDescription()

var pen7 = CXBlackPen(withModel: "EX-17")
pen7.printDescription()
var pen8 = CXBlackPen(withModel: "EX-18")
pen8.printDescription()
var pen9 = CXBlackPen(withModel: "EX-19")
pen9.printDescription()
var pen10 = CXBlackPen(withModel: "EX-20")
pen10.printDescription()

var penHolder = PenHolder(withCapacity: 10)
penHolder.add(pen: pen1)
penHolder.add(pen: pen2)
penHolder.add(pen: pen3)
penHolder.add(pen: pen4)
penHolder.add(pen: pen5)
penHolder.remove(penIndex: 2)
penHolder.printDescripttion()
