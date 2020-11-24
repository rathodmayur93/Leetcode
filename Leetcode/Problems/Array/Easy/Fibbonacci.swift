//
//  Fibbonacci.swift
//  Leetcode
//
//  Created by ds-mayur on 29/10/2020.
//
/*
 The Fibonacci numbers, commonly denoted F(n) form a sequence, called the Fibonacci sequence, such that each number is the sum of the
 two preceding ones, starting from 0 and 1. That is,
 
 F(0) = 0,   F(1) = 1
 F(N) = F(N - 1) + F(N - 2), for N > 1.
 Given N, calculate F(N).

 Example 1:
 Input: 2
 Output: 1
 Explanation: F(2) = F(1) + F(0) = 1 + 0 = 1.
 
 Example 2:
 Input: 3
 Output: 2
 Explanation: F(3) = F(2) + F(1) = 1 + 1 = 2.
 
 Example 3:
 Input: 4
 Output: 3
 Explanation: F(4) = F(3) + F(2) = 2 + 1 = 3.
 */

import Foundation

struct Fibbonacci {
    func fib(_ N: Int) {
        var memorize = [Int]()
        memorize.append(0)
        memorize.append(1)

        for i in stride(from: 2, to: N + 1, by: 1){
            let value = memorize[i - 1] + memorize[i - 2]
            memorize.append(value)
        }
        
        print(memorize[N])
        print(findFibbo(n: N))
    }
    
    func findFibbo(n : Int) -> Int{
        if(n < 1){
            return 0
        }else if( n == 1){
            return 1
        }else if(n == 2){
            return 1
        }else {
            return findFibbo(n: n - 1) + findFibbo(n: n - 2)
        }
    }
}

