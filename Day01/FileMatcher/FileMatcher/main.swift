//
//  main.swift
//  p1
//
//  Created by Mac on 2017. 3. 14..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

let path = "/Users/mac/Desktop"

var files = FileMatcher()
try files.allFiles(atPath: path)
try files.isExist(filename: "tempfile1.rtf", atPath: path)

//만약 찾아야 하는 파일이 여러 개라면?
try files.someFiles(targetFile: ["profile.jpeg", "Make IndexOf.js"], atPath: path)

//특정 확장자(.doc) 파일 목록만 구하려면?
try files.docFiles(target: ".doc", atPath: path)
