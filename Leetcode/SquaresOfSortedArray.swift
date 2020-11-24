//
//  SquaresOfSortedArray.swift
//  Leetcode
//
//  Created by ds-mayur on 2/10/2020.
//

import Foundation

struct SquareOfSortedArray {
    
    func sortArray(_ arr : [Int]) -> [Int]{
        
        let n = arr.count
        var result = Array(repeating: 0, count: n)
        
        for i in 0..<n{
            result.append(arr[i] * arr[i])
        }
        
        return result.sorted()
    }
}
