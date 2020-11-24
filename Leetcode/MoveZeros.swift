//
//  MoveZeros.swift
//  Leetcode
//
//  Created by ds-mayur on 30/9/2020.
//

import Foundation

struct MoveZeros{
    
    internal func performMoveZeros(_ arr : inout [Int]){
        //if arr.isEmpty { return } // BASE CASE
        let n = arr.count
        
        /*
         // Worst case solution O(n2)
         for _ in 0..<n{
         for j in 0..<n{
         if(arr[j] == 0){
         let temp = arr[j]
         arr[j] = arr[j+1]
         arr[j+1] = temp
         }
         }
         }
         */
        
//        for i in 0..<n{
//            if(arr[i] == 0){
//                arr.remove(at: i)
//                arr.append(0)
//            }
//        }
        
        var i = 0
        var zeroCount = 0
        while i < n-zeroCount{
            if(arr[i] == 0){
                arr.remove(at: i)
                arr.append(0)
                zeroCount += 1
            }else{
                i += 1
            }
        }
        
        print(arr)
    }
}
