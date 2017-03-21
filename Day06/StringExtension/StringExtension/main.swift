//
//  main.swift
//  StringExtension
//
//  Created by Mac on 2017. 3. 21..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

extension String {
    func filterHangulWord() -> [String] {
        // 가 = 44032; 힣 = 55203; - = 45

        var unicode = ""
        var result = [String]()
        
        for val in self.unicodeScalars {
            if val.value >= 44032 || val.value == 45 {
                unicode += String(UnicodeScalar(val.value)!)
            }
        }
        result = unicode.components(separatedBy: "-").filter{ $0 != "" }
        return result
    }
}

let str = "http://www.osxdev.org/forum/index.php?threads/swift-2-0에서-try-catch로-fatalerror-잡을-수-있나요.382/"

print(str.filterHangulWord())

