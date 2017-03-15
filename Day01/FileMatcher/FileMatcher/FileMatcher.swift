//
//  FileMatcher.swift
//  p1
//
//  Created by Mac on 2017. 3. 15..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

class FileMatcher {
    
    func allFiles(atPath : String) throws -> [String] {
    let files = try FileManager.default.contentsOfDirectory(atPath: atPath)
    return files
    }
//    isExist(filename:String,
//    atPath:String) -> Bool
    

}
