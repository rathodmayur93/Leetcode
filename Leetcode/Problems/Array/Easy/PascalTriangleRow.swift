//
//  PascalTriangleRow.swift
//  Leetcode
//
//  Created by ds-mayur on 01/12/2020.
// problem: https://leetcode.com/problems/pascals-triangle-ii/
/**
 Given an integer rowIndex, return the rowIndexth row of the Pascal's triangle.
 Notice that the row index starts from 0.
 In Pascal's triangle, each number is the sum of the two numbers directly above it.

 Follow up:
 Could you optimize your algorithm to use only O(k) extra space?
 
 Example 1:
 Input: rowIndex = 3
 Output: [1,3,3,1]
 
 Example 2:
 Input: rowIndex = 0
 Output: [1]
 
 Example 3:
 Input: rowIndex = 1
 Output: [1,1]
 
**Solution**
 Runtime: 0 ms, faster than 100.00% of Swift online submissions for Pascal's Triangle II.
 Memory Usage: 14.3 MB, less than 15.38% of Swift online submissions for Pascal's Triangle II.
 */

import Foundation

struct PascalTriangleRow{
    
    func getRow(_ rowIndex: Int) {
        
        var result = [1]
        
        for i in 0..<rowIndex{
            result.append((result[i] * (rowIndex - i)) / (i + 1))
        }
        
        print(result)
    }
}
