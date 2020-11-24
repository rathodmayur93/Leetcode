//
//  MinimumTimeVisitingAllPoints.swift
//  Leetcode
//
//  Created by ds-mayur on 19/10/2020.
//
// Problem: https://leetcode.com/problems/minimum-time-visiting-all-points/
/*
 On a plane there are n points with integer coordinates points[i] = [xi, yi]. Your task is to find the minimum time in seconds to visit
 all points.You can move according to the next rules:
 In one second always you can either move vertically, horizontally by one unit or diagonally (it means to move one unit vertically and
 one unit horizontally in one second).You have to visit the points in the same order as they appear in the array.

 Example 1:
 Input: points = [[1,1],[3,4],[-1,0]]
 Output: 7
 Explanation: One optimal path is [1,1] -> [2,2] -> [3,3] -> [3,4] -> [2,3] -> [1,2] -> [0,1] -> [-1,0]
 Time from [1,1] to [3,4] = 3 seconds
 Time from [3,4] to [-1,0] = 4 seconds
 Total time = 7 seconds
 
 Example 2:
 Input: points = [[3,2],[-2,2]]
 Output: 5
 */

import Foundation

struct MinimumTimeVisitingAllPoints{
    
    func minTimeToVisitAllPoints2(_ points: [[Int]]) {
        
        let n = points.count
        var time = 0
        
        if n == 0 {
            print("0")
        }
        
        for i in 0..<(n - 1){
            
            let row = points[i][0]
            let col = points[i][1]
            
            let row1 = points[i + 1][0]
            let col1 = points[i + 1][1]
            
            time += max(abs(row1 - row), abs(col1 - col))
            
            print("Debug time : \(max(abs(row1 - row), abs(col1 - col)))")
        }
        
        print(time)
    }
}
