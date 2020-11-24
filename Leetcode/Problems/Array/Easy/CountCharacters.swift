//
//  CountCharacters.swift
//  Leetcode
//
//  Created by ds-mayur on 29/10/2020.
// problem: https://leetcode.com/problems/find-words-that-can-be-formed-by-characters/submissions/
/*
 You are given an array of strings words and a string chars. A string is good if it can be formed by characters from chars (each
 character can only be used once) Return the sum of lengths of all good strings in words.
 
 Example 1:
 Input: words = ["cat","bt","hat","tree"], chars = "atach"
 Output: 6
 Explanation:
 The strings that can be formed are "cat" and "hat" so the answer is 3 + 3 = 6.
 
 Example 2:
 Input: words = ["hello","world","leetcode"], chars = "welldonehoneyr"
 Output: 10
 Explanation:
 The strings that can be formed are "hello" and "world" so the answer is 5 + 5 = 10.
 */

import Foundation

struct CountCharacters{
    func countCharacters(_ words: [String], _ chars: String) {
        
        var charArr = [Int].init(repeating: 0, count: 26)
        var count = 0
        
        for char in chars{
            charArr[Int(char.asciiValue!) - 97] += 1
        }
        print(charArr)
        for word in words{
            
            var wordChar = [Int].init(repeating: 0, count: 26)
            var allCharMatched = false
            for char in word{
                wordChar[Int(char.asciiValue!) - 97] += 1
            }
            
            for i in 0..<26 where wordChar[i] > 0{
                if(charArr[i] >= wordChar[i]){
                    allCharMatched = true
                }else{
                    allCharMatched = false
                    break
                }
            }
            
            if(allCharMatched){
                count += word.count
            }
            
            print("======= Word Char =========")
            print(wordChar)
        }
    
        print(count)
    }
}
