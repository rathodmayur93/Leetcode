//
//  MinCostClimbingStairs.swift
//  Leetcode
//
//  Created by ds-mayur on 02/12/2020.
// problem: https://leetcode.com/problems/min-cost-climbing-stairs/submissions/
/**
 On a staircase, the i-th step has some non-negative cost cost[i] assigned (0 indexed). Once you pay the cost, you can either climb one or two steps. You need to find minimum cost to reach the top of the floor, and you can either start from the step with index 0, or the step with index 1.
 
 Example 1:
 Input: cost = [10, 15, 20]
 Output: 15
 Explanation: Cheapest is start on cost[1], pay that cost and go to the top.
 
 Example 2:
 Input: cost = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]
 Output: 6
 Explanation: Cheapest is start on cost[0], and only step on 1s, skipping cost[3].
 
**Soluttion**
 Runtime: 36 ms, faster than 15.38% of Swift online submissions for Min Cost Climbing Stairs.
 Memory Usage: 13.6 MB, less than 100.00% of Swift online submissions for Min Cost Climbing Stairs.

 */

import Foundation

struct MinCostClimbingStairs {
    
    func minCostClimbingStairs(_ cost: [Int]) {
        
        var table = [Int](repeating: 0, count: cost.count)//cost
        table[0] = cost[0]
        table[1] = cost[1]
        for i in 2..<(cost.count){
            table[i] = cost[i] + min(table[i - 1], table[i - 2])
        }
        
        print(table)
        print(min(table[cost.count - 1], table[cost.count - 2]))
    }
}
