//
//  ArraysEqualByReversingSubArrays.swift
//  Leetcode
//
//  Created by ds-mayur on 21/10/2020.
//

import Foundation


struct ArrayEqualByReversingSubArray {
    
    func canBeEqual(_ target: [Int], _ arr: [Int]){
        if(target.count != arr.count){
            print(false)
        }
        
        var tempArr = Array(repeating: 0, count: 1001)
        
        for i in 0..<target.count {
            tempArr[target[i]] += 1
            tempArr[arr[i]] -= 1
        }
        
        for j in tempArr where j != 0{
            print(false)
        }
        
        print(true)
    }
}
