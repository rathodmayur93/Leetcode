//
//  ThirdMax.swift
//  Leetcode
//
//  Created by ds-mayur on 4/10/2020.
//

import Foundation

struct ThirdMax {
    
    func findThirdMax(_ arr : [Int]) -> Int{
        
        let n = arr.count
        var firstHighest = Int.min
        var secondHighest = Int.min
        var thirdHighest = Int.min
        
        for i in 0..<n{
            if(arr[i] > firstHighest){
                thirdHighest = secondHighest
                secondHighest = firstHighest
                firstHighest = arr[i]
            }
            
            if(arr[i] < firstHighest && arr[i] > secondHighest){
                thirdHighest = secondHighest
                secondHighest = arr[i]
            }
            
            if(arr[i] < firstHighest && arr[i] < secondHighest && arr[i] > thirdHighest){
                thirdHighest = arr[i]
            }
        }
        
        if(n < 3 || thirdHighest == Int.min){
            return firstHighest
        }else{
            return thirdHighest
        }
    }
}
