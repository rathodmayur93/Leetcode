//
//  HasGroupsSizeX.swift
//  Leetcode
//
//  Created by ds-mayur on 16/12/2020.
// problem: https://leetcode.com/problems/x-of-a-kind-in-a-deck-of-cards/submissions/
/**
 In a deck of cards, each card has an integer written on it.
 Return true if and only if you can choose X >= 2 such that it is possible to split the entire deck into 1 or more groups of cards, where:
 Each group has exactly X cards. All the cards in each group have the same integer.
 
 Example 1:
 Input: deck = [1,2,3,4,4,3,2,1]
 Output: true
 Explanation: Possible partition [1,1],[2,2],[3,3],[4,4].
 
 Example 2:
 Input: deck = [1,1,1,2,2,2,3,3]
 Output: false´
 Explanation: No possible partition.
 
 Example 3:
 Input: deck = [1]
 Output: false
 Explanation: No possible partition.
 
 Example 4:
 Input: deck = [1,1]
 Output: true
 Explanation: Possible partition [1,1].
 
 Example 5:
 Input: deck = [1,1,2,2,2,2]
 Output: true
 Explanation: Possible partition [1,1],[2,2],[2,2].
 
**Solution**
 Runtime: 100 ms, faster than 85.71% of Swift online submissions for X of a Kind in a Deck of Cards.
 Memory Usage: 14.1 MB, less than 90.48% of Swift online submissions for X of a Kind in a Deck of Cards.
 */

import Foundation

struct HasGroupsSizeX {
    
    func hasGroupsSizeX(_ deck: [Int]) {
        
        if(deck.count == 1){
            print(false)
        }
        
        var dic = [Int : Int]()
        for n in deck{
            dic[n, default: 0] += 1
        }
        
        let values = dic.values
        let min = values.min() ?? 0
        
        if (min == 1){
            print(false)
        }
        
        //find common factor and it must be between 2 to lowest number
        search : for i in 2...min{
            for value in values{
                if(value % i != 0){
                    continue search
                }
            }
            print(true)
        }
        print(false)
        
    }
}
