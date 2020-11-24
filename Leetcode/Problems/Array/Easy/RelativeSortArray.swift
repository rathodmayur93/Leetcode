//
//  RelativeSortArray.swift
//  Leetcode
//
//  Created by ds-mayur on 28/10/2020.
// problem: https://leetcode.com/problems/relative-sort-array/
/*
 Given two arrays arr1 and arr2, the elements of arr2 are distinct, and all elements in arr2 are also in arr1.Sort the elements of arr1
 such that the relative ordering of items in arr1 are the same as in arr2.  Elements that don't appear in arr2 should be placed at the
 end of arr1 in ascending order.
 
 Example 1:
 Input: arr1 = [2,3,1,3,2,4,6,7,9,2,19], arr2 = [2,1,4,3,9,6]
 Output: [2,2,2,1,4,3,3,9,6,7,19]
 
 Constraints:
 arr1.length, arr2.length <= 1000
 0 <= arr1[i], arr2[i] <= 1000
 Each arr2[i] is distinct.
 Each arr2[i] is in arr1.
 */

import Foundation

struct RelativeSortArray {
    
    func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) {
        
        var elementDic : [Int : Int] = [:]
        var result = [Int]()
        var remainingElement = [Int]()
        
        for n in arr1{
            if(!arr2.contains(n)){
                remainingElement.append(n)
            }else{
                elementDic[n] = elementDic[n] == nil ? 1 : elementDic[n]! + 1
            }
        }
        
        for m in arr2 {
            result.append(contentsOf: [Int].init(repeating: m, count: elementDic[m]!))
        }
        
        result.append(contentsOf: remainingElement.sorted())
        
        print(elementDic)
        print(result)
    }
    
    func solution2(_ arr1: [Int], _ arr2: [Int]){
        
        var result = [Int]()
        
        let elementDic = arr1.reduce(into: [:]) { (counts, value) in
            counts[value, default: 0] += 1
        }
        
        result = arr2.flatMap{ Array(repeating: $0, count: elementDic[$0]!) }
        
        let _ = arr1.sorted().map {
            if(!arr2.contains($0)){
                result.append($0)
            }
        }
        
        print(result)
    }
}
