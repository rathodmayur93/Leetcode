//
//  TransposeMatrix.swift
//  Leetcode
//
//  Created by ds-mayur on 02/11/2020.
// problem: https://leetcode.com/problems/transpose-matrix/
/*
 Given a matrix A, return the transpose of A. The transpose of a matrix is the matrix flipped over it's main diagonal, switching the row
 and column indices of the matrix.
 
 Example 1:
 Input: [[1,2,3],[4,5,6],[7,8,9]]
 Output: [[1,4,7],[2,5,8],[3,6,9]]
 
 Example 2:
 Input: [[1,2,3],[4,5,6]]
 Output: [[1,4],[2,5],[3,6]]
 */

import Foundation


struct TransposeMatrix {
    func transpose(_ A: [[Int]]) {
    
        var result = [[Int]]()
        
        for i in 0..<A[0].count{
            var row = [Int]()
            for j in 0..<A.count{
                row.append(A[j][i])
            }
            result.append(row)
        }
        
        print(result)
    }
}
