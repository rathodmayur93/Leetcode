//
//  DistanceBetweenBusStops.swift
//  Leetcode
//
//  Created by ds-mayur on 13/11/2020.
// problem: https://leetcode.com/problems/distance-between-bus-stops/submissions/
/**
 A bus has n stops numbered from 0 to n - 1 that form a circle. We know the distance between all pairs of neighboring stops where distance[i] is the distance between the stops number i and (i + 1) % n.  The bus goes along both directions i.e. clockwise and counterclockwise. Return the shortest distance between the given start and destination stops.
 
 Example 1:
 
 Input: distance = [1,2,3,4], start = 0, destination = 1
 Output: 1
 Explanation: Distance between 0 and 1 is 1 or 9, minimum is 1.
  
 Example 2:
 Input: distance = [1,2,3,4], start = 0, destination = 2
 Output: 3
 Explanation: Distance between 0 and 2 is 3 or 7, minimum is 3.
  
 Example 3:
 Input: distance = [1,2,3,4], start = 0, destination = 3
 Output: 4
 Explanation: Distance between 0 and 3 is 6 or 4, minimum is 4.
 */

import Foundation

struct DistanceBetweenBusStops{
    
    func distanceBetweenBusStops(_ distance: [Int], _ start: Int, _ destination: Int) {
        
        var path1 = 0
        var path2 = 0
        let n = distance.count
        let minVal = min(start, destination)
        let maxVal = max(start, destination)
        
        for j in 0..<n  {
            
            if(j >= minVal && j < maxVal){
                path1 += distance[j]
            }else{
                path2 += distance[j]
            }
        }
        /*
        for k in 0..<n where validateArr[k] == 0 {
            path2 += distance[k]
        }
        */
         
        /*
        for i in minVal..<maxVal{
            
            if(i <= (maxVal - 1)){
                path1 += distance[i]
            }else{
                path2 += distance[i]
            }
        }
        */
        
        print(path1)
        print(path2)
        print("Result = \(min(path2, path1))")
    }
}
