//
//  CheckStraightLine.swift
//  Leetcode
//
//  Created by ds-mayur on 10/12/2020.
// problem: https://leetcode.com/problems/check-if-it-is-a-straight-line/submissions/
/*
 You are given an array coordinates, coordinates[i] = [x, y], where [x, y] represents the coordinate of a point. Check if these points
 make a straight line in the XY plane.
 Example 1:
 Input: coordinates = [[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]]
 Output: true
 
 Example 2:
 Input: coordinates = [[1,1],[2,2],[3,4],[4,5],[5,6],[7,7]]
 Output: false
 
 **Solution**
 Runtime: 40 ms, faster than 100.00% of Swift online submissions for Check If It Is a Straight Line.
 Memory Usage: 14.3 MB, less than 12.50% of Swift online submissions for Check If It Is a Straight Line.
 */

import Foundation

struct CheckStraightLine{
    
    func checkStraightLine(_ coordinates: [[Int]]) {
        
        if(coordinates.count == 2){
            print(true)
        }
        var isStraightLine = true
        
        let x0 = coordinates[0][0]
        let x1 = coordinates[1][0]
        
        let y0 = coordinates[0][1]
        let y1 = coordinates[1][1]
        
        
        let xDiff = x1 - x0
        let yDiff = y1 - y0
        
        for i in 2..<(coordinates.count){
            
            let predictX = coordinates[i][0]
            let predictY = coordinates[i][1]
            
            if(yDiff * (predictX - x1) != xDiff * (predictY - y1) ){
                isStraightLine = false
            }
        }
        
        print(isStraightLine)
    }
}
