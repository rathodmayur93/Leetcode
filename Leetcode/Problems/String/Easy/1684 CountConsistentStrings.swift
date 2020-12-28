//
//  CountConsistentStrings.swift
//  Leetcode
//
//  Created by ds-mayur on 23/12/2020.
// problem: https://leetcode.com/problems/count-the-number-of-consistent-strings/
/**
 You are given a string allowed consisting of distinct characters and an array of strings words. A string is consistent if all characters in the string appear in the string allowed.
 Return the number of consistent strings in the array words.
 
 Example 1:
 Input: allowed = "ab", words = ["ad","bd","aaab","baa","badab"]
 Output: 2
 Explanation: Strings "aaab" and "baa" are consistent since they only contain characters 'a' and 'b'.
 
 Example 2:
 Input: allowed = "abc", words = ["a","b","c","ab","ac","bc","abc"]
 Output: 7
 Explanation: All strings are consistent.
 ]
 Example 3:
 Input: allowed = "cad", words = ["cc","acd","b","ba","bac","bad","ac","d"]
 Output: 4
 Explanation: Strings "cc", "acd", "ac", and "d" are consistent.
 
**Solution**
 Runtime: 380 ms, faster than 48.10% of Swift online submissions for Count the Number of Consistent Strings.
 Memory Usage: 14.5 MB, less than 84.81% of Swift online submissions for Count the Number of Consistent Strings.
 */

import Foundation

struct CountConsistentStrings{
    func countConsistentStrings(_ allowed: String, _ words: [String])  {
        
        var count = 0
        
        for word in words{
            
            var isPresent = false
            
            for ch in word {
                if(allowed.contains(ch)){
                    isPresent = true
                }else{
                    isPresent = false
                    break
                }
            }
            
            if(isPresent){
                count += 1
            }
        }
        
        print(count)
    }
}
