//
//  main.swift
//  p1
//
//  Created by Mac on 2017. 3. 14..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

//var pen1 = CXPen(withBrand: "monami")
//pen1.setColor("red")
//pen1.setUsage(100)
//pen1.printDescription()
//
//var pen2 = CXPen(withBrand: "monami")
//pen1.setColor("red")
//pen1.setUsage(90)
//pen1.printDescription()
//
//var pen3 = CXPen(withBrand: "sharp")
//pen1.setColor("blue")
//pen1.setUsage(80)
//pen1.printDescription()
//
//var pen4 = CXPen(withBrand: "sharp")
//pen1.setColor("blue")
//pen1.setUsage(70)
//pen1.printDescription()
//
//var pen5 = CXPen(withBrand: "sharp")
//pen1.setColor("blue")
//pen1.setUsage(60)
//pen1.printDescription()
//
//var pen6 = CXPen(withBrand: "monami")
//pen1.setColor("blue")
//pen1.setUsage(50)
//pen1.printDescription()
//
//var pen7 = CXPen(withBrand: "sharp")
//pen7.setColor("black")
//pen7.setUsage(40)
//pen7.printDescription()

var pen8 = CXPen(withBrand: "sharp")
pen8.setColor("black")
pen8.setUsage(30)
pen8.printDescription()

var pen9 = CXPen(withBrand: "monami")
pen9.setColor("black")
pen9.setUsage(20)
pen9.printDescription()

var pen10 = CXPen(withBrand: "sharp")
pen10.setColor("black")
pen10.setUsage(10)
pen10.printDescription()


var penholder = PenHolder.init(withCapacity: 10)
penholder.add(pen: pen8)
penholder.add(pen: pen9)
penholder.add(pen: pen10)
penholder.remove(penIndex: 1)
penholder.printDescripttion()
