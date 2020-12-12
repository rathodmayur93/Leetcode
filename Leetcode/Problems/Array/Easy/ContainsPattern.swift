//
//  ContainsPattern.swift
//  Leetcode
//
//  Created by ds-mayur on 11/12/2020.
// problem: https://leetcode.com/problems/detect-pattern-of-length-m-repeated-k-or-more-times/submissions/
/**
 Given an array of positive integers arr,  find a pattern of length m that is repeated k or more times.
 A pattern is a subarray (consecutive sub-sequence) that consists of one or more values, repeated multiple times consecutively without overlapping. A pattern is defined by its length and the number of repetitions. Return true if there exists a pattern of length m that is repeated k or more times, otherwise return false.

 Example 1:
 Input: arr = [1,2,4,4,4,4], m = 1, k = 3
 Output: true
 Explanation: The pattern (4) of length 1 is repeated 4 consecutive times. Notice that pattern can be repeated k or more times but not less.
 
 Example 2:
 Input: arr = [1,2,1,2,1,1,1,3], m = 2, k = 2
 Output: true
 Explanation: The pattern (1,2) of length 2 is repeated 2 consecutive times. Another valid pattern (2,1) is also repeated 2 times.
 
 Example 3:
 Input: arr = [1,2,1,2,1,3], m = 2, k = 3
 Output: false
 Explanation: The pattern (1,2) is of length 2 but is repeated only 2 times. There is no pattern of length 2 that is repeated 3 or more times.
 
 Example 4:
 Input: arr = [1,2,3,1,2], m = 2, k = 2
 Output: false
 Explanation: Notice that the pattern (1,2) exists twice but not consecutively, so it doesn't count.
 
 Example 5:
 Input: arr = [2,2,2,2], m = 2, k = 3
 Output: false
 Explanation: The only pattern of length 2 is (2,2) however it's repeated only twice. Notice that we do not count overlapping repetitions.
 
**Solution**
 Runtime: 1824 ms, faster than 40.00% of Swift online submissions for Detect Pattern of Length M Repeated K or More Times.
 Memory Usage: 14 MB, less than 40.00% of Swift online submissions for Detect Pattern of Length M Repeated K or More Times.
 */

import Foundation

struct ContainsPattern {
    
    func containsPattern(_ arr: [Int], _ m: Int, _ k: Int) {
        
        var matchingArray = [Int](repeating: 0, count: m)
        var matchingCount = 0
        
        for i in stride(from: 0, to: arr.count, by: 1){
            if((i + m - 1) < arr.count){
                matchingArray = Array(arr[i...(i + m - 1)])
                var count = 0
                
                for j in stride(from: 0, to: arr.count, by: 1){
                    for k in stride(from: j, to: arr.count, by: m){
                        if((k + m - 1) < arr.count){
                            let checkArray = Array(arr[k...(k + m - 1)])
                            
                            if(checkArray == matchingArray){
                                count += 1
                            }else{
                                matchingCount = max(matchingCount, count)
                                count = 0
                            }
                        }
                    }
                    matchingCount = max(matchingCount, count)
                    count = 0
                }
                matchingCount = max(matchingCount, count)
                count = 0
            }
        }
        
        if(matchingCount >= k){
            print(true)
        }else{
            print(false)
        }
        print(matchingCount)
    }
    
    //MARK:- Method 2
    /**
     Runtime: 4 ms, faster than 100.00% of Swift online submissions for Detect Pattern of Length M Repeated K or More Times.
     Memory Usage: 13.8 MB, less than 100.00% of Swift online submissions for Detect Pattern of Length M Repeated K or More Times.
     */
    func  containsPattern2(_ arr: [Int], _ m: Int, _ k: Int){
        
        var count = 0
        var i = 0
        while (i + m < arr.count) {
            
            count = arr[i] == arr[i + m] ? count+1 : 0
            print(count)
            
            if(count == (k - 1) * m){
                print(true)
            }
            
            i += 1
        }
        
        print(false)
    }
}
