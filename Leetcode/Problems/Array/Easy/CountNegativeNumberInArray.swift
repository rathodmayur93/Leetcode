//
//  CountNegativeNumberInArray.swift
//  Leetcode
//
//  Created by ds-mayur on 20/10/2020.
// problem: https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/
/*
 Given a m * n matrix grid which is sorted in non-increasing order both row-wise and column-wise.Return the number of negative numbers
 in grid.
 
 Example 1:
 Input: grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
 Output: 8
 Explanation: There are 8 negatives number in the matrix.
 
 Example 2:
 Input: grid = [[3,2],[1,0]]
 Output: 0
 
 Example 3:
 Input: grid = [[1,-1],[-1,-1]]
 Output: 3
 
 Example 4:
 Input: grid = [[-1]]
 Output: 1
 */

import Foundation

struct CountNegativeNumberInArray{
    
    func countNegatives(_ grid: [[Int]]) {
        
        var count = 0
        
        for i in 0..<grid.count{
            for j in 0..<grid[i].count{
                if(grid[i][j] < 0){
                    count += 1
                }
            }
        }
        
        print(count)
    }
}
