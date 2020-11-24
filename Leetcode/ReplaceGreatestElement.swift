//
//  ReplaceGreatestElement.swift
//  Leetcode
//
//  Created by ds-mayur on 28/9/2020.
//

import Foundation


struct ReplaceGreatestElement{
    
    func replaceElement(_ arr : [Int]) -> [Int]{
        
        var arr = arr
        let n = arr.count
        var greatestElement = Int.min
        
        for i in 0..<n-1{
            for j in (i + 1)..<n{
                if(arr[j] > greatestElement){
                    greatestElement = arr[j]
                }
            }
            
            arr[i] = greatestElement
            greatestElement = Int.min
        }
        
        arr[n - 1] = -1
        return arr
    }
    
    func bestSolution(_ arr : [Int]) -> [Int]{
        
        if arr.isEmpty { return [] }
        
        var result = [-1]
        let n = arr.count
        
        for i in (1..<n).reversed(){
            result.insert(max(result[0], arr[i]), at: 0)
        }
        return result
    }
}
