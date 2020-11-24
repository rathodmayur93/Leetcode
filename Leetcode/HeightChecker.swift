//
//  HeightChecker.swift
//  Leetcode
//
//  Created by ds-mayur on 3/10/2020.
//

import Foundation

class HeightChecker {
    
    public func performAnotherAlgo(_ arr : [Int]){
        
        let newArr = arr.sorted()
        
        if(newArr == arr){
            print(0)
        }else{
            
            let n = arr.count
            var moves = 0
            
            for i in 0..<n{
                if(arr[i] != newArr[i]){
                    moves += 1
                }
            }
            
            print(moves)
        }
    }
}
