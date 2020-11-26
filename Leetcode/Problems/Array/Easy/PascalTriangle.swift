//
//  PascalTriangle.swift
//  Leetcode
//
//  Created by ds-mayur on 25/11/2020.
// problem: https://leetcode.com/problems/pascals-triangle/submissions/
/**
 Given a non-negative integer numRows, generate the first numRows of Pascal's triangle.
 In Pascal's triangle, each number is the sum of the two numbers directly above it.

 Example:

 Input: 5
 Output:
 [
      [1],
     [1,1],
    [1,2,1],
   [1,3,3,1],
  [1,4,6,4,1]
 ]
 
 Solution:
 Runtime: **4 ms**, faster than **80.37%** of Swift online submissions for Pascal's Triangle.
 Memory Usage: **14 MB**, less than **51.40%** of Swift online submissions for Pascal's Triangle.
 */

import Foundation

struct PascalTriangle {
    
    func generate(_ numRows: Int) {
        
        var result = [[Int]]()
        
        for i in 1..<(numRows + 1) {
            var row = [Int]()
            for j in 0..<(i){
                if(j == 0 || j == (i - 1)){
                    row.append(1)
                }else{
                    row.append(result[i - 2][j - 1] + result[i - 2][j])
                }
            }
            result.append(row)
        }
        
        
        print(result)
    }
}
