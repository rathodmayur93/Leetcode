//
//  NumEquivDominoPairs.swift
//  Leetcode
//
//  Created by ds-mayur on 07/12/2020.
// problem: https://leetcode.com/problems/number-of-equivalent-domino-pairs/submissions/
/**
 Given a list of dominoes, dominoes[i] = [a, b] is equivalent to dominoes[j] = [c, d] if and only if either (a==c and b==d), or (a==d and b==c) - that is, one domino can be rotated to be equal to another domino.
 Return the number of pairs (i, j) for which 0 <= i < j < dominoes.length, and dominoes[i] is equivalent to dominoes[j].
 
 Example 1:
 Input: dominoes = [[1,2],[2,1],[3,4],[5,6]]
 Output: 1
 
 **Solution**
 Runtime: 228 ms, faster than 8.33% of Swift online submissions for Number of Equivalent Domino Pairs.
 Memory Usage: 17.4 MB, less than 95.83% of Swift online submissions for Number of Equivalent Domino Pairs.
 */

import Foundation

class NumEquivDominoPairs {
    
    /*
     Runtime: 228 ms, faster than 8.33% of Swift online submissions for Number of Equivalent Domino Pairs.
     Memory Usage: 17.4 MB, less than 95.83% of Swift online submissions for Number of Equivalent Domino Pairs.
     */
    func numEquivDominoPairs(_ dominoes: [[Int]]) {
            
        var noOfPair = 0
        var dic = [[Int] : Int]()
        
        for m in 0..<dominoes.count {
            let currentElement = dominoes[m]
            let swapedElement = [currentElement[1], currentElement[0]]
            
            if((dic[swapedElement] ?? 0) >= 1 && currentElement[0] != currentElement[1]){
                dic[swapedElement]! += 1
            }else{
                dic[currentElement, default: 0] += 1
            }
            
            if((dic[currentElement] ?? 0) > 1 || (dic[swapedElement] ?? 0) > 1) {
                noOfPair += (max((dic[currentElement] ?? 0), dic[swapedElement] ?? 0) - 1)
            }
        }
        
        print(dic)
        print(noOfPair)
    }
    
    /*
     Runtime: 180 ms, faster than 91.67% of Swift online submissions for Number of Equivalent Domino Pairs.
     Memory Usage: 17.7 MB, less than 41.67% of Swift online submissions for Number of Equivalent Domino Pairs.
     */
    func numEquivDominoPairs2(_ dominoes: [[Int]]){
        
        var dic = [Int : Int]()
        var noOfPair = 0
        for domino in dominoes{
            let val = (10 * min(domino[0], domino[1])) + (max(domino[0], domino[1]))
            
            if let count = dic[val] {
                dic[val] = count + 1
            }else{
                dic[val] = 1
            }
            
            if let count = dic[val]{
                noOfPair += count - 1
            }
        }
        
        print(noOfPair)
    }
}
