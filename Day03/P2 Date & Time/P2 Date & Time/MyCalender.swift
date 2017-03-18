//
//  MyCalender.swift
//  P2 Date & Time
//
//  Created by Mac on 2017. 3. 16..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

class MyCalender {
    private let dateFormatter = DateFormatter()
    private let dateCalendar = NSCalendar(identifier: NSCalendar.Identifier.gregorian)
    
//    • 오늘 날짜의 년, 월, 일, 시, 분, 초를 튜플로 묶어서 리턴하는 함수
    func today() -> (Int, Int, Int, Int, Int, Int) {
        let date = Date()
        let cal = Calendar.current
        
        let today = (year : cal.component(.year, from: date),
                     month : cal.component(.month, from: date),
                     day : cal.component(.day, from: date),
                     hour : cal.component(.hour, from: date),
                     minute : cal.component(.minute, from: date),
                     second : cal.component(.second, from: date))
        return today
    }
    
//    • 년월일 날짜를 문자열로 입력하면 Date 인스턴스를 리턴하는 함수
    func specificDate(year: String, month: String, day: String) -> Date {
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let date = dateFormatter.date(from: "\(year)-\(month)-\(day)")!
        
        return date
    }
    
//    • 특정 년도, 월, 일을 Int로 입력하면 Date 인스턴스를 리턴하는 함수
    func specificIntDate(year: Int, month: Int, day: Int) -> Date {
        let cal = Calendar.current
        let com = DateComponents(calendar: cal, year: year, month: month, day: day)
        
        return cal.date(from: com)!
    }
    
//    • 오늘 날짜 Date 인스턴스를 입력하면 한국식 날짜 표기로 문자열을 리턴하는 함수
    func koreanDate(inputDate: Date) -> String {
        dateFormatter.locale = Locale(identifier: "ko_KR")
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .full
        let newDate = dateFormatter.string(from: inputDate)
        
        return newDate
    }
    
//    • 특정 년도와 특정 달을 입력하면 1일의 요일을 찾는 함수
    func findDay(year: Int, month: Int) -> String {
        let cal = Calendar(identifier: Calendar.Identifier.gregorian)
        let com = DateComponents(calendar: cal, year: year, month: month)
        let date : Date = cal.date(from: com)!
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        return dateFormatter.string(from: date)
    }

//    • 특정 년도와 특정 달을 입력하면 일자를 주단위로 배열에 넣고,
//      주단위 배열을 다시 배열에 넣어 2차원 배열로 리턴하는 함수
    func weekArray(year: Int, month: Int) {
        var week = [Int]
        let cal = Calendar(identifier: Calendar.Identifier.gregorian)
        let com = DateComponents(calendar: cal, year: year, month: month, day: 31)
//        let date : Date = cal.date(from: com)!
//        let dateFormatter = DateFormatter()
//        var week = [Ine]()
//        for d ...(com.day)! {
//            
//        }
        print(com.day)
        
        
    }
   }
