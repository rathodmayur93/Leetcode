//
//  CanPlaceFlowers.swift
//  Leetcode
//
//  Created by ds-mayur on 16/12/2020.
// problem: https://leetcode.com/problems/can-place-flowers/submissions/
/**
 You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.
 Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule.
 
 Example 1:
 Input: flowerbed = [1,0,0,0,1], n = 1
 Output: true
 
 Example 2:
 Input: flowerbed = [1,0,0,0,1], n = 2
 Output: false
 
**Solution**
 Runtime: 132 ms, faster than 15.65% of Swift online submissions for Can Place Flowers.
 Memory Usage: 14 MB, less than 89.57% of Swift online submissions for Can Place Flowers.
 */

import Foundation

struct CanPlaceFlowers {
    
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) {
        
        /*
        var flowerDic = [Int : Int]()
        
        flowerDic = flowerbed.reduce(into: [:], { (dic, value) in
            dic[value, default: 0] += 1
        })
                
        let zeroCount = flowerDic[0] ?? 0
        let oneCount = flowerDic[1] ?? 0
        
        if(zeroCount > (n * 2) && oneCount < zeroCount){
            print(true)
        }
        */
        
       
        var i = 0
        let count = flowerbed.count
        var beds = flowerbed
        var pairs = 0
        
        while (i < (count)) {
            if(beds[i] == 0 && (i == 0 || beds[i - 1] == 0) && (i == (count - 1) || beds[i + 1] == 0)){
                pairs += 1
                beds[i] = 1
            }
            
            if(pairs >= n){
                print(true)
            }
            
            i += 1
        }
        
        print(false)
        
        /*
        var count = flowerbed.count
        var flowers = n
        for i in 0..<count{
            
            if(i == (count - 1) && flowerbed[i] == 0 && flowerbed[i + 1] == 0){
                flowers -= 1
            }else if(flowerbed[i - 1] == 0 && flowerbed[i] == 0 && flowerbed[i + 1] == 0){
                flowers -= 1
            }
        }
        
        if(flowers >= n){
            print(true)
        }
        
        print(false)
        print(flowers)
        */
    }
}
