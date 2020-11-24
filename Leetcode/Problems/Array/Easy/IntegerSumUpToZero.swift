//
//  IntegerSumUpToZero.swift
//  Leetcode
//
//  Created by ds-mayur on 20/10/2020.
// problem: https://leetcode.com/problems/find-n-unique-integers-sum-up-to-zero/
/*
 Given an integer n, return any array containing n unique integers such that they add up to 0.
 
 Example 1:
 Input: n = 5
 Output: [-7,-1,1,3,4]
 Explanation: These arrays also are accepted [-5,-1,1,2,3] , [-3,-1,2,-2,4].
 
 Example 2:
 Input: n = 3
 Output: [-1,0,1]
 
 Example 3:
 Input: n = 1
 Output: [0]
 */

import Foundation


struct IntegerSumUpToZero{
    
    func sumZero(_ n: Int) {
        
        var result = [Int]()
        var count = n
        
        if(n % 2 != 0){
            result.append(0)
            count = n - 1
        }
        
        for i in stride(from: 0, to: count, by: 2){
            result.append(i + 1)
            result.append(0 - (i + 1))
        }
        
        print(result)
    }
}
