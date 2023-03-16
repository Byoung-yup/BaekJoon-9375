//
//  main.swift
//  BaekJoon#9375
//
//  Created by 김병엽 on 2023/03/17.
//
// Reference: https://velog.io/@hyoda_mon/BOJ-Swift-9375-패션왕-신해빈

import Foundation

func solution() {
    
    let testCase = Int(readLine()!)!
    
    for _ in 0..<testCase {
        
        let clothesCase = Int(readLine()!)!
        if clothesCase == 0 {
            print(0)
            continue
        }
        
        var clothesDic: [String: [String]] = [:]
        var clothesCount: [Int] = []
        
        for _ in 0..<clothesCase {
            
            let clothes = readLine()!.split(separator: " ").map { String($0) }
            
            if clothesDic.keys.contains(clothes[1]) {
                clothesDic[clothes[1]]!.append(clothes[0])
            } else {
                clothesDic[clothes[1]] = [clothes[0]]
            }
            
        }
        
        for (_, value) in clothesDic {
            clothesCount.append(value.count + 1)
        }
        
        let count = clothesCount.reduce(1, *)
        
        print(count - 1)
    }
}

solution()
