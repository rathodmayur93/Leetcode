//
//  UniqueMorseRepresentations.swift
//  Leetcode
//
//  Created by ds-mayur on 23/12/2020.
// problem: https://leetcode.com/problems/unique-morse-code-words/submissions/
/**
 Now, given a list of words, each word can be written as a concatenation of the Morse code of each letter. For example, "cab" can be written as "-.-..--...", (which is the concatenation "-.-." + ".-" + "-..."). We'll call such a concatenation, the transformation of a word.
 Return the number of different transformations among all words we have.

 Example:
 Input: words = ["gin", "zen", "gig", "msg"]
 Output: 2
 Explanation:
 The transformation of each word is:
 "gin" -> "--...-."
 "zen" -> "--...-."
 "gig" -> "--...--."
 "msg" -> "--...--."

 There are 2 different transformations, "--...-." and "--...--.".
 
**Solution**
 Runtime: 8 ms, faster than 94.40% of Swift online submissions for Unique Morse Code Words.
 Memory Usage: 14.1 MB, less than 99.20% of Swift online submissions for Unique Morse Code Words.
 */

import Foundation


struct UniqueMorseRepresentations{
    
    func uniqueMorseRepresentations(_ words: [String]) {
        let morse = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
        var dic = [String : String]()
        
        for word in words{
            var encodedString = ""
            for ch in word{
                let index = (ch.asciiValue ?? 0) - 97
                encodedString += morse[Int(index)]
            }
            
            dic[encodedString] = word
        }
        
        print(dic.count)
    }
}
