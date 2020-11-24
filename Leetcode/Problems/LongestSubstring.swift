//
//  LongestSubstring.swift
//  Leetcode
//
//  Created by ds-mayur on 8/10/2020.
//

import Foundation

struct LongestSubstring{
    
    
    //MARK:- Method 1 //MARK:- Method 2 (Working) Time Complexity O(n2) Space Complexity O(n) 
    func findLongestSubstring(str : String){
        var dic : [Character : Int] = [:]
        var max = 0
        print(findLength(strArr: Array(str), start: 0, end: 0, storeDic: &dic, length: &max))
    }
    
    func findLength(strArr : [Character], start : Int, end : Int, storeDic : inout [Character : Int], length : inout Int) {
        
        if(end >= strArr.count || start >= strArr.count){
            return
        }
        
        if(storeDic[strArr[end]] == 0 || storeDic[strArr[end]] == nil){
            storeDic[strArr[end]] = 1
            length = max(length, storeDic.count)
            findLength(strArr: strArr, start: start, end: end + 1, storeDic: &storeDic, length: &length)
        }else if(storeDic[strArr[end]]! == 1){
            storeDic.removeValue(forKey: strArr[start])
            findLength(strArr: strArr, start: start + 1, end: end, storeDic: &storeDic, length: &length)
        }
        
        print(storeDic)
        print(length)
    }
    
    //MARK:- Method 2 (Working) Time Complexity O(n2) Space Complexity O(n)
    func findLongestSubstring2(str : String){
        var set : Set<Character> = Set<Character>()
        var max = 0
        print(findLength(strArr: Array(str), start: 0, end: 0, storedSet: &set, length: &max))
    }
    
    func findLength(strArr : [Character], start : Int, end : Int, storedSet : inout Set<Character>, length : inout Int) {
        
        if(end >= strArr.count || start >= strArr.count){
            return
        }
        
        if(storedSet.contains(strArr[end])){
            storedSet.insert(strArr[end])
            length = max(length, storedSet.count)
            findLength(strArr: strArr, start: start, end: end + 1, storedSet: &storedSet, length: &length)
        }else {
            storedSet.remove(strArr[start])
            findLength(strArr: strArr, start: start + 1, end: end, storedSet: &storedSet, length: &length)
        }
        
        print(storedSet)
        print(length)
    }
    
    //MARK:- Method 3 Optimal solution
    
    func findLengthOptimalSol(str : String){
        var ans = 0
        var index = Array(repeating: 0, count: 256)
        var i = 0
        let strArr = Array(str)
        for j in strArr.indices{
            let asciiValue = Int(Array(str)[j].asciiValue ?? 0)
            i = max(index[asciiValue], i)
            ans = max(ans, j - i + 1)
            index[asciiValue] = j + 1
        }
        
        print(ans)
    }
    
    func leetCodeSolution(s : String) -> Int{
        if s.isEmpty { return 0 }
        var lastIndex = Array(repeating: -1, count: 256)
        let sArr = Array(s)
        var maxLength = 0
        var startIndex = 0
        for index in sArr.indices {
            // let char = s[s.index(s.startIndex,offsetBy: index)]
            
            let asciiIndex = Int(sArr[index].asciiValue ?? 0)
            let lastIndexData = lastIndex[asciiIndex]
            if (lastIndexData >= startIndex) {
                startIndex = lastIndexData+1
            }
            lastIndex[asciiIndex] = index
            maxLength = max((index-startIndex)+1,maxLength)
        }
        print(maxLength)
        return maxLength
    }
}
