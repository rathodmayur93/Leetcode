//
//  NumSmallerByFrequency.swift
//  Leetcode
//
//  Created by ds-mayur on 06/11/2020.
// problem: https://leetcode.com/problems/compare-strings-by-frequency-of-the-smallest-character/submissions/
/*
 Let's define a function f(s) over a non-empty string s, which calculates the frequency of the smallest character in s. For example, if
 s = "dcce" then f(s) = 2 because the smallest character is "c" and its frequency is 2.
 Now, given string arrays queries and words, return an integer array answer, where each answer[i] is the number of words such that
 f(queries[i]) < f(W), where W is a word in words.
 
 Example 1:
 Input: queries = ["cbd"], words = ["zaaaz"]
 Output: [1]
 Explanation: On the first query we have f("cbd") = 1, f("zaaaz") = 3 so f("cbd") < f("zaaaz").
 
 Example 2:
 Input: queries = ["bbb","cc"], words = ["a","aa","aaa","aaaa"]
 Output: [1,2]
 Explanation: On the first query only f("bbb") < f("aaaa"). On the second query both f("aaa") and f("aaaa") are both > f("cc").
 */

import Foundation

struct NumSmallerByFrequency{
    
    func numSmallerByFrequency(_ queries: [String], _ words: [String]) {
        
        var queriesArr = [Int]()
        var wordsArr = [Int]()
        var result = [Int]()
        
        for query in queries{
            
            var queryDic = [Character : Int]()
            for ch in query{
                queryDic[ch, default: 0] += 1
            }
            
            let value = (queryDic.sorted(by: { (dic1, dic2) -> Bool in
                return dic1.key < dic2.key
            })).first?.value ?? 0
            
            queriesArr.append(value)
        }
        
        for word in words{
            
            var wordDic = [Character : Int]()
            for ch in word{
                wordDic[ch, default: 0] += 1
            }
            
            let value = (wordDic.sorted(by: { (dic1, dic2) -> Bool in
                return dic1.key < dic2.key
            })).first?.value ?? 0
            
            wordsArr.append(value)
        }
        
        for i in queriesArr{
            var count = 0
            for j in wordsArr{
                if(i < j){
                    count += 1
                }
            }
            
            result.append(count)
        }
        
        print(queriesArr)
        print(wordsArr)
        print(result)
    }
}
