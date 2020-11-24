//
//  JewelsAndStones.swift
//  Leetcode
//
//  Created by ds-mayur on 14/10/2020.
// Problem: https://leetcode.com/problems/jewels-and-stones/
/*
 You're given strings J representing the types of stones that are jewels, and S representing the stones you have.  Each character in S
 is a type of stone you have.  You want to know how many of the stones you have are also jewels.
 The letters in J are guaranteed distinct, and all characters in J and S are letters. Letters are case sensitive, so "a" is considered a
 different type of stone from "A".

 Example 1:
 Input: J = "aA", S = "aAAbbbb"
 Output: 3
 
 Example 2:
 Input: J = "z", S = "ZZ"
 Output: 0
 
 */

import Foundation

struct JewelsAndStones {
    func numJewelsInStones(_ J: String, _ S: String){
        
        var count = 0
        let jArr = Array(J)
        let sArr = Array(S)
        
        for stone in sArr{
            if(jArr.contains(stone)){
                count += 1
            }
        }
        
        print(count)
    }
}
