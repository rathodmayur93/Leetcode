//
//  LongestPallindromicSubstring.swift
//  Leetcode
//
//  Created by ds-mayur on 12/10/2020.
//

import Foundation

struct LongestPallindromicSubstring{
    
    func longestPalindrom(_ str : String){
        
        let n = str.count
        let startIndex = 0
        let endIndex = n - 1
        var result : [Character] = [Character]()
        performAlgo(str: str, strArr: Array(str), start: startIndex, end: endIndex, paliString: &result, length: n)
    }
    
    func performAlgo(str : String,
                     strArr : [Character],
                     start : Int,
                     end : Int,
                     paliString : inout [Character],
                     length : Int) -> Int
    {
        
        if(strArr.count == 1){
            return 1
        }
        
        if(start > end){ //BASE CASE
            return 0
        }
        
        if(start == end){ // Both the index are at same point
            paliString.append(strArr[start])
            return 1
        }
        
        var count1 = 0
        if(strArr[start] == strArr[end]){
            
            paliString.append(strArr[start])
            paliString.append(strArr[end])
            
            
            let remainingLength = end - start - 1
            if(remainingLength == performAlgo(str: str, strArr: strArr, start: start + 1, end: end - 1, paliString: &paliString, length: length))
            {
                count1 = remainingLength + 2
            }
        }
        
        let count2 = performAlgo(str: str, strArr: strArr, start: start + 1, end: end, paliString: &paliString, length: length)
        
        let count3 = performAlgo(str: str, strArr: strArr, start: start, end: end - 1, paliString: &paliString, length: length)
        
        let result = max(count1, max(count2, count3))
        print(paliString)
        return result
    }
}
