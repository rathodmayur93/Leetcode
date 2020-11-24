//
//  Shift2DGrid.swift
//  Leetcode
//
//  Created by ds-mayur on 04/11/2020.
// problem: https://leetcode.com/problems/shift-2d-grid/
/*
 Given a 2D grid of size m x n and an integer k. You need to shift the grid k times.
 In one shift operation:
 
 Element at grid[i][j] moves to grid[i][j + 1].
 Element at grid[i][n - 1] moves to grid[i + 1][0].
 Element at grid[m - 1][n - 1] moves to grid[0][0].
 Return the 2D grid after applying shift operation k times.

 Example 1:
 Input: grid = [[1,2,3],[4,5,6],[7,8,9]], k = 1
 Output: [[9,1,2],[3,4,5],[6,7,8]]
 
 Example 2:
 Input: grid = [[3,8,1,9],[19,7,2,5],[4,6,11,10],[12,0,21,13]], k = 4
 Output: [[12,0,21,13],[3,8,1,9],[19,7,2,5],[4,6,11,10]]
 
 Example 3:
 Input: grid = [[1,2,3],[4,5,6],[7,8,9]], k = 9
 Output: [[1,2,3],[4,5,6],[7,8,9]]
 */

import Foundation

struct Shift2DGrid{
    
    func shiftGrid(_ grid: [[Int]], _ k: Int) {
        var mGrid = grid
        let m = mGrid.count
        if m == 0 { print("No Need") }
        let n = mGrid[0].count
        if n == 0 { print("No need") }
        
        for i in 0..<m{
            for j in 0..<n{
                let index = (((i * n) + j) + k) % (m * n)
                let newI = index / n
                let newJ = index % n
                mGrid[newI][newJ] = grid[i][j]
            }
        }
        
        print(mGrid)
    }
}









/*
 
 let gridCopy = grid
 var result = [[Int]]()
 
 let startArrIndex = k / gridCopy.count
 
 
 for i in 0..<gridCopy.count{
     
     var row = [Int](repeating: 0, count: gridCopy[0].count)
     var startArrElementIndex = k % gridCopy[0].count
     
     for j in 0..<gridCopy[0].count{
         if(j < k){
             var index = i
             if(index - 1 < 0){
                 index = gridCopy.count - 1
             }else{
                 index = index - 1
             }
             
             row[j] = gridCopy[index][gridCopy[0].count - startArrElementIndex]
             
         }else{
             row[j] = gridCopy[i][j - k]
         }
     }
     
     result.append(row)
 }
 
 print(result)
 */




/*
 var gridCopy = grid
 var result = [[Int]]()
 let gridCount = gridCopy.count
 let gridElementCount = gridCopy[0].count
 
 if((gridCount * gridElementCount) == k){
     print(grid)
 }
 
 let divide = k/gridCount
 let mod = k % gridElementCount
 
 for i in 0..<gridCount{
     var element = [Int](repeating: 0, count: gridElementCount)
     for j in 0..<gridElementCount{
         
         if((j + k) > gridElementCount){
             break
         }
         element[j + k] = gridCopy[i][j]
     }
     
     result.append(element)
 }
 
 print(result)
 */
