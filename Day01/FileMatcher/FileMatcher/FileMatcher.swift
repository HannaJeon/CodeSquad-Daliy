//
//  FileMatcher.swift
//  p1
//
//  Created by Mac on 2017. 3. 15..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

class FileMatcher {
    
    @discardableResult
    func allFiles(atPath : String) throws -> [String] {
        var files = try FileManager.default.contentsOfDirectory(atPath: atPath)
        
        //파일명 순서대로 정렬을 하려면?
        files = files.sorted { (s1, s2) -> Bool in
            return s1 < s2
        }
        return files
    }
    
    @discardableResult
    func isExist(filename:String, atPath:String) throws -> Bool{
        let file = try allFiles(atPath: atPath)
        var result = false
        
        for i in file {
            if i.range(of: filename) != nil {
                result = true
            }
        }
        return result
    }
// 플러스 미션
//만약 찾아야 하는 파일이 여러 개라면?
    @discardableResult
    func someFiles(targetFile : [String], atPath : String) throws -> [String]{
        let file = try allFiles(atPath: atPath)
        var result = [String]()
        
        for i in targetFile {
            result += file.filter({ $0 == i})
        }
        return result
    }
    
//특정 확장자(.doc) 파일 목록만 구하려면?
    @discardableResult
    func docFiles(target : String, atPath : String) throws -> [String]{
        let file = try allFiles(atPath: path)
        var result = [String]()
        
        for val in file {
            if val.range(of: target) != nil {
                result.append(val)
            }
        }
        return result
    }
    
    

}
