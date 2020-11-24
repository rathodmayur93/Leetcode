//
//  SortArrayByParity.swift
//  Leetcode
//
//  Created by ds-mayur on 1/10/2020.
//

import Foundation

struct SortArrayByParity{
    
    func sort(_ arr : [Int]) -> [Int]{
        
        if arr.isEmpty { return [] }
        let n = arr.count
        var result = [Int]()
        
        for i in 0..<n{
            if(arr[i] % 2 == 0){
                result.insert(arr[i], at: 0)
            }else{
                result.append(arr[i])
            }
        }
        
        return result
    }
}
