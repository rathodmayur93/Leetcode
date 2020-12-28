//
//  StringMain.swift
//  Leetcode
//
//  Created by ds-mayur on 23/10/2020.
//

import Foundation

struct StringMain{
    
    func balanceString(){
        let s = "RLRRLLRLRL"
        let s2 = "RLLLLRRRLR"
        let s3 = "LLLLRRRR"
        let s4 = "RLRRRLLRLL"
        BalancedString().balancedStringSplit(s4)
    }
    
    func interpret()  {
        let command = "G()(al)"
        print(Interpret().interpret(command))
    }
    
    func reverseString(){
        var arr : [Character] = ["h","e","l","l","o"]
        ReverseString().reverseString(&arr)
    }
    
    func countConsistentStrings(){
        let allowed = "ab", words = ["ad","bd","aaab","baa","badab"]
        let allowed2 = "abc", words2 = ["a","b","c","ab","ac","bc","abc"]
        CountConsistentStrings().countConsistentStrings(allowed2, words2)
    }
    
    func arrayStringsAreEqual(){
        let word1 = ["ab", "c"], word2 = ["a", "bc"]
        ArrayStringsAreEqual().arrayStringsAreEqual(word1, word2)
    }
    
    func uniqueMorseRepresentations(){
        let words = ["gin", "zen", "gig", "msg"]
        UniqueMorseRepresentations().uniqueMorseRepresentations(words)
    }
    
    func freqAlphabets(){
        let s = "10#11#12"
        FreqAlphabets().freqAlphabets(s)
    }
    
}
