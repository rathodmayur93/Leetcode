//
//  MissingNumber.swift
//  Leetcode
//
//  Created by ds-mayur on 26/11/2020.
//

import Foundation


struct MisisngNumber {
    
    fileprivate var hello = "Hello"
    private var world = "World"
    
    func missingNumber(_ nums: [Int]){
        
        let n = nums.count
        var sum = (n * (n + 1))/2
        
        for n in nums{
            sum = sum - n
        }
        print(sum)
    }
    
    func missing(){
        print(world)
    }
}

class Demo {
    
    fileprivate var hello = "Hello"
    private var world = "World"
    
    func testA(){
        print(hello)
    }
}
extension Demo{
    
    func printing(){
    }
}
