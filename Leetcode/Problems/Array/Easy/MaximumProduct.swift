//
//  MaximumProduct.swift
//  Leetcode
//
//  Created by ds-mayur on 07/12/2020.
// problem: https://leetcode.com/problems/maximum-product-of-three-numbers/
/**
 Given an integer array nums, find three numbers whose product is maximum and return the maximum product.
 Example 1:
 Input: nums = [1,2,3]
 Output: 6
 
 Example 2:
 Input: nums = [1,2,3,4]
 Output: 24
 
 Example 3:
 Input: nums = [-1,-2,-3]
 Output: -6

**Solution**
 Runtime: 260 ms, faster than 94.00% of Swift online submissions for Maximum Product of Three Numbers.
 Memory Usage: 14.4 MB, less than 58.00% of Swift online submissions for Maximum Product of Three Numbers.

 */

import Foundation

struct MaximumProduct{
    
    func maximumProduct(_ nums: [Int]) {
        
        //MARK:- Method 1
        /*
        var minusArray = [Int]()
        var positiveArray = [Int]()
        
        var firstMax = 0
        var secondMax = 0
        var thirdMax = 0
        
        for n in nums{
            if(n >= 0){
                positiveArray.append(n)
            }else{
                minusArray.append(n)
            }
        }
        
        if(minusArray.count == 0){
            let sortedPluss = positiveArray.sorted()
            let plusCount = sortedPluss.count
            firstMax = sortedPluss[plusCount - 1]
            secondMax = sortedPluss[plusCount - 2]
            thirdMax = sortedPluss[plusCount - 3]
            print (firstMax * secondMax * thirdMax)
        }else if(positiveArray.count == 0){
            let sortedMinus = minusArray.sorted()
            let count = sortedMinus.count
            firstMax = sortedMinus[count - 1]
            secondMax = sortedMinus[count - 2]
            thirdMax = sortedMinus[count - 3]
            print (firstMax * secondMax * thirdMax)
        }else if(minusArray.count >= 2 && positiveArray.count > 0){
            let sortedPluss = positiveArray.sorted()
            let sortedMinus = minusArray.sorted()
            
            let product1 = sortedPluss[sortedPluss.count - 1] * sortedMinus[0] * sortedMinus[1]
            var product2 = 0
            if(positiveArray.count > 2){
                product2 = sortedPluss[sortedPluss.count - 1] * sortedPluss[sortedPluss.count - 2] * sortedPluss[sortedPluss.count - 3]
            }
            
            print(max(product1, product2))
        }else{
            
            let sortedPluss = positiveArray.sorted()
            let product2 = sortedPluss[sortedPluss.count - 1] * sortedPluss[sortedPluss.count - 2] * sortedPluss[sortedPluss.count - 3]
            print(product2)
        }
    */
    
        //MARK:- Method 2
        var firstMax = Int.min
        var secondMax = Int.min
        var thirdMax = Int.min
    
        var firstMin = Int.max
        var secondMin = Int.max
        
        for number in nums{
            
            if(number < firstMin){
                secondMin = firstMin
                firstMin = number
            }else if(number < secondMin){
                secondMin = number
            }
            
            if((number) > (firstMax)){
                thirdMax = secondMax
                secondMax = firstMax
                firstMax = number
            }else if((number) > (secondMax)){
                thirdMax = secondMax
                secondMax = number
            }else if((number) > (thirdMax)){
                thirdMax = number
            }
        }
        
        print(firstMax)
        print(secondMax)
        print(thirdMax)
        print(firstMin * secondMin * firstMax)
        print(firstMax * secondMax * thirdMax)
        print(max(firstMin * secondMin * firstMax, firstMax * secondMax * thirdMax))
//        if(isMinusCount % 2 == 0){
//            print(firstMax * secondMax * thirdMax)
//        }else{
//            print(-(firstMax * secondMax * thirdMax))
//        }
        
        
//        let sortedArray = nums.sorted()
//        let product = nums[n - 1] * nums[n - 2] * nums[n - 3]
//        print(product)
 
    }
}
