//
//  MinStartValue.swift
//  Leetcode
//
//  Created by ds-mayur on 31/10/2020.
//

import Foundation

struct MinStartValue {
    
    func minStartValue(_ nums: [Int]) {
        
        var minStartValue = 1
        var minStartValueFound = false
        var longestSteak = 0
        
        while !minStartValueFound {
            
            var sum = minStartValue
            
            for i in 0..<nums.count{
                sum = sum + nums[i]
                
                if(sum < 1){
                    minStartValue += 1
                    longestSteak = 0
                    break
                }else{
                    longestSteak += 1
                }
                
                if(longestSteak == nums.count){
                    minStartValueFound = true
                }
            }
        }
        
        print(minStartValue)
    }
}
