//
//  LargeGroupPositions.swift
//  Leetcode
//
//  Created by ds-mayur on 02/12/2020.
// problem: https://leetcode.com/problems/positions-of-large-groups/submissions/
/**
 In a string s of lowercase letters, these letters form consecutive groups of the same character. For example, a string like s = "abbxxxxzyy" has the groups "a", "bb", "xxxx", "z", and "yy".
 A group is identified by an interval [start, end], where start and end denote the start and end indices (inclusive) of the group. In the above example, "xxxx" has the interval [3,6].
 A group is considered large if it has 3 or more characters.
 Return the intervals of every large group sorted in increasing order by start index.
 
 Example 1:
 Input: s = "abbxxxxzzy"
 Output: [[3,6]]
 Explanation: "xxxx" is the only large group with start index 3 and end index 6.
 
 Example 2:
 Input: s = "abc"
 Output: []
 Explanation: We have groups "a", "b", and "c", none of which are large groups.
 
 Example 3:
 Input: s = "abcdddeeeeaabbbcd"
 Output: [[3,5],[6,9],[12,14]]
 Explanation: The large groups are "ddd", "eeee", and "bbb".
 
 Example 4:
 Input: s = "aba"
 Output: []
 
**Solution**
 Runtime: 8 ms, faster than 100.00% of Swift online submissions for Positions of Large Groups.
 Memory Usage: 14 MB, less than 100.00% of Swift online submissions for Positions of Large Groups.
 */

import Foundation

struct LargeGroupModel{
    
}

struct LargeGroupPositions {
    
    func largeGroupPositions(_ s: String) {
        
        var result = [[Int]]()
        let strArr = Array(s)
        var count = 1
        var start = 0
        var end = 0
        var isStarted = false
        
        for i in 0..<(strArr.count - 1){
            
            if(strArr[i] == strArr[i + 1]){
                count += 1
                //start = i
                
                if(count >= 3 && !isStarted){
                    isStarted = true
                    print(strArr[i])
                    print(i)
                    start = i - 1
                }
            }else{
                if(isStarted){
                    isStarted = false
                    end = i
                    
                    var row = [Int]()
                    row.append(start)
                    row.append(end)
                    result.append(row)
                }
                count = 1
            }
        }
        
        if(isStarted){
            var row = [Int]()
            row.append(start)
            row.append(s.count - 1)
            result.append(row)
        }
        print(result)
        
        /*
        for char in s {
            dic[char, default: 0] += 1
        }
        
        var largeGroupDic = dic.filter{ $0.value >= 3 }
        print(largeGroupDic)
        
        let strArr = Array(s)
        for i in 0..<strArr.count{
            var charCount = 0
            var row = [Int]()
            if(largeGroupDic.contains(where: { (searchDic) -> Bool in
                searchDic.key == strArr[i]
            })){
                charCount = largeGroupDic[strArr[i]] ?? 0
                row.append(i)
                row.append(i + (charCount - 1))
                largeGroupDic.removeValue(forKey: strArr[i])
            }
            
            result.append(row)
        }
        
        print(largeGroupDic)
        print(result)
        */
        
        for i in 0..<strArr.count{
            
        }
    }
}
