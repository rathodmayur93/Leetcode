//
//  1678 Interpret.swift
//  Leetcode
//
//  Created by ds-mayur on 21/12/2020.
// problem: https://leetcode.com/problems/goal-parser-interpretation/submissions/
/**
 You own a Goal Parser that can interpret a string command. The command consists of an alphabet of "G", "()" and/or "(al)" in some order. The Goal Parser will interpret "G" as the string "G", "()" as the string "o", and "(al)" as the string "al". The interpreted strings are then concatenated in the original order.
 Given the string command, return the Goal Parser's interpretation of command.

 Example 1:
 Input: command = "G()(al)"
 Output: "Goal"
 Explanation: The Goal Parser interprets the command as follows:
 G -> G
 () -> o
 (al) -> al
 The final concatenated result is "Goal".
 
 Example 2:
 Input: command = "G()()()()(al)"
 Output: "Gooooal"
 
 Example 3:
 Input: command = "(al)G(al)()()G"
 Output: "alGalooG"
 
**Solution**
 Runtime: 0 ms, faster than 100.00% of Swift online submissions for Goal Parser Interpretation.
 Memory Usage: 14.6 MB, less than 31.71% of Swift online submissions for Goal Parser Interpretation.
 */

import Foundation

struct Interpret {
    
    func interpret(_ command: String) -> String {
        var decoded = ""
        let arr = Array(command)
        var i = 0
        
        while (i < arr.count){
            if(arr[i] == "("){
                if(arr[i + 1] == ")"){
                    decoded.append("o")
                    i += 2
                }else{
                    decoded.append("al")
                    i += 4
                }
            }else{
                decoded.append("G")
                i += 1
            }
        }
        
        return decoded
    }
}
