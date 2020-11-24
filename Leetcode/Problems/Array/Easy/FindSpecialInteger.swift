//
//  FindSpecialInteger.swift
//  Leetcode
//
//  Created by ds-mayur on 05/11/2020.
// problem: https://leetcode.com/problems/element-appearing-more-than-25-in-sorted-array/
/*
 Given an integer array sorted in non-decreasing order, there is exactly one integer in the array that occurs more than 25% of the time.
 Return that integer.
 
 Example 1:
 Input: arr = [1,2,2,6,6,6,6,7,10]
 Output: 6
 */

import Foundation

struct FindSpecialInteger{
    func findSpecialInteger(_ arr: [Int]) {
        
        let n = arr.count
        let specialIntCount : Float = (Float(n) * 25.0) / 100.0
        
        let arr = arr.reduce(into: [:]) { (dic, value)  in
            dic[value, default: 0] += 1
        }

        let specialInt = arr.filter { Float($0.value) > specialIntCount }
        print(specialInt.first?.key ?? 0)
    }
    
    func findSpeicalIntegerSol(_ arr : [Int]){
        
        var maxCount = 0
        var currentSteak = 0
        var specialInt = 0
        let threshold = (arr.count)/4
        
        for i in 0..<(arr.count - 1){
            if(arr[i] == arr[i + 1]){
                maxCount += 1
            }else{
                maxCount = 0
            }
            
            if(maxCount > threshold){
                print(arr[i])
            }
            
            if(maxCount > currentSteak){
                currentSteak = maxCount
                specialInt = arr[i]
            }
        }
        print(currentSteak)
        print(specialInt)
        
        /*
        for n in arr{
            dic[n, default: 0] += 1
            
        }
        
        for (key, value) in dic{
            if(value > Int(specialIntCount)){
                result = key
            }
        }
        
        print(dic[Int(specialIntCount)])
        */
    }
}
