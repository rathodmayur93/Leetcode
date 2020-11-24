//
//  DisappearedNumber.swift
//  Leetcode
//
//  Created by ds-mayur on 5/10/2020.
//

import Foundation

struct DisappearedNumber{
    
    func findDisappearedNo(_ arr : [Int]){
        var arr = arr
        var result = [Int]()
        let n = arr.count
        
        for i in 0..<n{
            let index = abs(arr[i]) - 1
            if(arr[index] > 0){
                arr[index] = -arr[index]
            }
        }
        
        for i in 0..<n{
            if(arr[i] > 0){
                result.append(i + 1)
            }
        }
        
        print(result)
    }
}
