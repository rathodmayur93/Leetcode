//
//  MinAbsDifference.swift
//  Leetcode
//
//  Created by ds-mayur on 29/10/2020.
// problem: https://leetcode.com/problems/minimum-absolute-difference/submissions/
/*
 Given an array of distinct integers arr, find all pairs of elements with the minimum absolute difference of any two elements.
 Return a list of pairs in ascending order(with respect to pairs), each pair [a, b] follows

 a, b are from arr
 a < b
 b - a equals to the minimum absolute difference of any two elements in arr
 
 Example 1:
 Input: arr = [4,2,1,3]
 Output: [[1,2],[2,3],[3,4]]
 Explanation: The minimum absolute difference is 1. List all pairs with difference equal to 1 in ascending order.
 
 Example 2:
 Input: arr = [1,3,6,10,15]
 Output: [[1,3]]
 
 Example 3:
 Input: arr = [3,8,-10,23,19,-4,-14,27]
 Output: [[-14,-10],[19,23],[23,27]]
 */

import Foundation

struct MinAbsDifference {
    func minimumAbsDifference(_ arr: [Int]) {
        
        let sorteArr = arr.sorted()
        var result = [[Int]]()
        var diff = 0
        
        for i in 0..<(sorteArr.count - 1){
            var pair = [Int]()
            if(i == 0){
                diff = abs(sorteArr[i + 1] - sorteArr[i])
                pair.append(sorteArr[i])
                pair.append(sorteArr[i + 1])
                result.append(pair)
            }else{
                let absDiff = abs(sorteArr[i + 1] - sorteArr[i])
                
                if(absDiff < diff){
                    diff = absDiff
                    result.removeAll()
                    
                    pair.append(sorteArr[i])
                    pair.append(sorteArr[i+1])
                    result.append(pair)
                    
                }else{
                    if(absDiff == diff){
                        pair.append(sorteArr[i])
                        pair.append(sorteArr[i+1])
                        result.append(pair)
                    }
                }
            }
            
        }
        
        print(result)
    }
}
