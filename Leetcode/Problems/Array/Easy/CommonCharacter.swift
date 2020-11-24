//
//  CommonCharacter.swift
//  Leetcode
//
//  Created by ds-mayur on 26/10/2020.
// problem : https://leetcode.com/problems/find-common-characters/
/*
 Given an array A of strings made only from lowercase letters, return a list of all characters that show up in all strings within the
 list (including duplicates).  For example, if a character occurs 3 times in all strings but not 4 times, you need to include that
 character three times in the final answer. You may return the answer in any order.
 
 Example 1:
 Input: ["bella","label","roller"]
 Output: ["e","l","l"]
 
 Example 2:
 Input: ["cool","lock","cook"]
 Output: ["c","o"]
 */

import Foundation

class CommonCharacter{
    func commonChars(_ A: [String]) {
        
        var commonChars = [String]()
        var minFreq = Array(repeating: Int.max, count: 26)
        
        for i in 0..<(A.count) {
            var charFreq = Array(repeating: 0, count: 26)
            let charArray = Array(A[i])
            
            for ch in charArray{
                charFreq[Int(ch.asciiValue ?? 0) - 97] += 1
            }
            
            for j in 0..<minFreq.count{
                minFreq[j] = min(charFreq[j], minFreq[j])
            }
            print(minFreq)
        }
        
        for k in 0..<minFreq.count{
            if(minFreq[k] > 0){
                for m in 0..<minFreq[k]{
                    commonChars.append(String(Character(UnicodeScalar(97 + k)!)))
                }
            }
        }
        
        print(commonChars)
    }
}
