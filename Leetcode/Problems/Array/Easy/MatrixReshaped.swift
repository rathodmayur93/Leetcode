//
//  MatrixReshaped.swift
//  Leetcode
//
//  Created by ds-mayur on 05/11/2020.
// problem: https://leetcode.com/problems/reshape-the-matrix/
/*
 In MATLAB, there is a very useful function called 'reshape', which can reshape a matrix into a new one with different size but keep its
 original data. You're given a matrix represented by a two-dimensional array, and two positive integers r and c representing the row
 number and column number of the wanted reshaped matrix, respectively. The reshaped matrix need to be filled with all the elements of
 the original matrix in the same row-traversing order as they were. If the 'reshape' operation with given parameters is possible and
 legal, output the new reshaped matrix; Otherwise, output the original matrix.

 Example 1:
 Input:
 nums =
 [[1,2],
  [3,4]]
 r = 1, c = 4
 Output:
 [[1,2,3,4]]
 Explanation:
 The row-traversing of nums is [1,2,3,4]. The new reshaped matrix is a 1 * 4 matrix, fill it row by row by using the previous list.
 
 Example 2:
 Input:
 nums =
 [[1,2],
  [3,4]]
 r = 2, c = 4
 Output:
 [[1,2],
  [3,4]]
 Explanation:
 There is no way to reshape a 2 * 2 matrix to a 2 * 4 matrix. So output the original matrix.
 */

import Foundation

struct MatrixReshaped{
    
    func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) {
        var result = [[Int]](repeating: [Int](repeating: 0, count: c), count: r)
        let m = nums.count
        let n = nums[0].count
        var oneDimensionArray = [Int](repeating: 0, count: m * n)
        
        if((m * n) != (r * c)){
            print(nums)
        }
        
        for i in 0..<m{
            for j in 0..<n{
                oneDimensionArray[(n * i) + j] = nums[i][j]
            }
        }
        
        for i in 0..<r{
            for j in 0..<c{
                result[i][j] = oneDimensionArray[(c * i) + j]
            }
        }
        
        print(oneDimensionArray)
        print(result)
    }
}
