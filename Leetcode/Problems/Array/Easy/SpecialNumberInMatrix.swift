//
//  SpecialNumberInMatrix.swift
//  Leetcode
//
//  Created by ds-mayur on 31/10/2020.
// problem: https://leetcode.com/problems/special-positions-in-a-binary-matrix/
/*
 Given a rows x cols matrix mat, where mat[i][j] is either 0 or 1, return the number of special positions in mat.A position (i,j) is
 called special if mat[i][j] == 1 and all other elements in row i and column j are 0 (rows and columns are 0-indexed).
 
 Example 1:
 Input: mat = [[1,0,0],
               [0,0,1],
               [1,0,0]]
 Output: 1
 Explanation: (1,2) is a special position because mat[1][2] == 1 and all other elements in row 1 and column 2 are 0.
 
 Example 2:
 Input: mat = [[1,0,0],
               [0,1,0],
               [0,0,1]]
 Output: 3
 Explanation: (0,0), (1,1) and (2,2) are special positions.
 
 Example 3:

 Input: mat = [[0,0,0,1],
               [1,0,0,0],
               [0,1,1,0],
               [0,0,0,0]]
 Output: 2
 
 Example 4:
 Input: mat = [[0,0,0,0,0],
               [1,0,0,0,0],
               [0,1,0,0,0],
               [0,0,1,0,0],
               [0,0,0,1,1]]
 Output: 3
 */

import Foundation


struct SpecialNumberInMatrix{
    
    func numSpecial(_ mat: [[Int]]) {
        
        var rows = [Int](repeating: 0, count: mat.count)
        var cols = [Int](repeating: 0, count: mat[0].count)
        var count = 0
        
        for i in 0..<mat.count{
            for j in 0..<mat[0].count{
                
                if(mat[i][j] == 1){
                    rows[i] += 1
                    cols[j] += 1
                }
            }
        }
        
        for k in 0..<mat.count{
            for l in 0..<mat[0].count{
                
                if(mat[k][l] == 1 && rows[k] == 1 && cols[l] == 1){
                    count += 1
                }
            }
        }
        
        print(count)
    }
}
