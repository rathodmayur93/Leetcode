//
//  LuckyNumberInArray.swift
//  Leetcode
//
//  Created by ds-mayur on 22/10/2020.
// problem: https://leetcode.com/problems/lucky-numbers-in-a-matrix/
/*
 Given a m * n matrix of distinct numbers, return all lucky numbers in the matrix in any order.A lucky number is an element of the
 matrix such that it is the minimum element in its row and maximum in its column.
 
 Example 1:
 Input: matrix = [[3,7,8],[9,11,13],[15,16,17]]
 Output: [15]
 Explanation: 15 is the only lucky number since it is the minimum in its row and the maximum in its column
 
 Example 2:
 Input: matrix = [[1,10,4,2],[9,3,8,7],[15,16,17,12]]
 Output: [12]
 Explanation: 12 is the only lucky number since it is the minimum in its row and the maximum in its column.
 
 Example 3:
 Input: matrix = [[7,8],[1,2]]
 Output: [7]
 */

import Foundation


struct LuckyNumberInArray{
    
    func luckyNumbers (_ matrix: [[Int]]) {
        
        var minRow = Int.min
        var maxRow = Int.max
        var result = [Int]()
        
        for i in 0..<matrix.count{
            
            var minVal = Int.max
            for j in 0..<matrix[i].count{
                if(minVal > matrix[i][j]){
                    minVal = matrix[i][j]
                }
                
                print("Row \(i) : \(matrix[i][j])")
            }
            
            minRow = max(minRow, minVal)
            //maxRow = minRow
        }
        
        for m in 0..<matrix[0].count{
            
            var maxVal = Int.min
            
            for k in 0..<matrix.count{
                if(maxVal < matrix[k][m]){
                    maxVal = matrix[k][m]
                }
                
                print("Column \(m) : \(matrix[k][m])")
            }
            
            maxRow = min(maxRow, maxVal)
        }
        
        //print("Min Value Row \(m) : \(minVal) & \(maxVal)")
        print("Finding Lucky Number \(minRow) & \(maxRow)")
        
        if(minRow == maxRow){
            result.append(minRow)
        }
        
        print(result)
    }
}
