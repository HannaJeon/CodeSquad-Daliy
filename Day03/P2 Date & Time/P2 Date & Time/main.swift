//
//  main.swift
//  P2 Date & Time
//
//  Created by Mac on 2017. 3. 16..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

let today = MyCalender()
let date = Date()
print(date)
print(today.today())
print(today.specificDate(year: "1992", month: "09", day: "07"))
print(today.specificIntDate(year: 2002, month: 12, day: 21))
print(today.koreanDate(inputDate: date))
print(today.findDay(year: 2017, month: 3))
today.weekArray(year: 2017, month: 3)
