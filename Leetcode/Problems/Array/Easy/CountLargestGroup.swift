//
//  CountLargestGroup.swift
//  Leetcode
//
//  Created by ds-mayur on 30/10/2020.
// problem: https://leetcode.com/problems/count-largest-group/
/*
 Given an integer n. Each number from 1 to n is grouped according to the sum of its digits. Return how many groups have the largest size.

 Example 1:
 Input: n = 13
 Output: 4
 Explanation: There are 9 groups in total, they are grouped according sum of its digits of numbers from 1 to 13:
 [1,10], [2,11], [3,12], [4,13], [5], [6], [7], [8], [9]. There are 4 groups with largest size.
 
 Example 2:
 Input: n = 2
 Output: 2
 Explanation: There are 2 groups [1], [2] of size 1.

 Example 3:
 Input: n = 15
 Output: 6
 
 Example 4:
 Input: n = 24
 Output: 5
 */

import Foundation

struct CountLargestGroup{
    func countLargestGroup(_ n: Int) {
        
        if(n < 10){
            print(n)
        }
        
        var dic = [Int : Int]()
        var count = 0
        
        for n in 1...n{
            
            let sum = sumOfDigits(n: n)
            let existing = dic[sum] ?? 0
            count = max(count, existing + 1)
            dic[sum] = existing + 1
        }
        
        print(dic.filter{ $0.value == count }.count)
    }
    
    
    private func sumOfDigits(n : Int) -> Int{
        var N = n
        var sum = 0
        
        while N > 0 {
            sum += N % 10
            N = N/10
        }
        
        return sum
    }
}
