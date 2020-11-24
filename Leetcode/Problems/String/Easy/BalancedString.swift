//
//  BalancedString.swift
//  Leetcode
//
//  Created by ds-mayur on 23/10/2020.
// problem: https://leetcode.com/problems/split-a-string-in-balanced-strings/

import Foundation


struct BalancedString {
    
    func balancedStringSplit(_ s: String) {
        
        var count = 0
        var rCount = 0
        var lCount = 0
        var sArray = Array(s)
        s.lowercased()
        for i in 0..<sArray.count{
            
            if(sArray[i] == "R"){
                rCount += 1
            }else if (sArray[i] == "L"){
                lCount += 1
            }
            
            if(rCount == lCount){
                count += 1
            }
        }
        
        print(count)
    }
}
