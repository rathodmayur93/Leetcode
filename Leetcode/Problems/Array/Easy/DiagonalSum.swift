//
//  DiagonalSum.swift
//  Leetcode
//
//  Created by ds-mayur on 19/10/2020.
// Problem: https://leetcode.com/problems/matrix-diagonal-sum/
/*
 Given a square matrix mat, return the sum of the matrix diagonals. Only include the sum of all the elements on the primary diagonal and all the elements on the secondary diagonal that are not part of the primary diagonal.
 
 Example 1:
 Input: mat = [[1,2,3],
               [4,5,6],
               [7,8,9]]
 Output: 25
 Explanation: Diagonals sum: 1 + 5 + 9 + 3 + 7 = 25
 Notice that element mat[1][1] = 5 is counted only once.
 
 Example 2:
 Input: mat = [[1,1,1,1],
               [1,1,1,1],
               [1,1,1,1],
               [1,1,1,1]]
 Output: 8
 
 Example 3:
 Input: mat = [[5]]
 Output: 5
 */

import Foundation

struct DiagonalSum{
    
    func diagonalSum(_ mat: [[Int]]){
        
        let n = mat.count
        var visitedPosition = [[Int]]()
        var sum = 0
        
        for i in 0..<n{
            for j in 0..<mat[i].count{
                
                if(i == j && !visitedPosition.contains([i,j])){
                    visitedPosition.append([i, j])
                    sum += mat[i][j]
                }
            }
            
            if(!visitedPosition.contains([i,n - i - 1])){
                sum += mat[i][n - i - 1]
            }
        }
        
        print(sum)
    }
}
