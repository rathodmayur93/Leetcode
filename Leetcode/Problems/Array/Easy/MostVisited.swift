//
//  MostVisited.swift
//  Leetcode
//
//  Created by ds-mayur on 10/11/2020.
// problem: https://leetcode.com/problems/most-visited-sector-in-a-circular-track/
/*
 Given an integer n and an integer array rounds. We have a circular track which consists of n sectors labeled from 1 to n. A marathon
 will be held on this track, the marathon consists of m rounds. The ith round starts at sector rounds[i - 1] and ends at sector
 rounds[i]. For example, round 1 starts at sector rounds[0] and ends at sector rounds[1]
 Return an array of the most visited sectors sorted in ascending order. Notice that you circulate the track in ascending order of sector
 numbers in the counter-clockwise direction (See the first example).

 Example 1:
 Input: n = 4, rounds = [1,3,1,2]
 Output: [1,2]
 Explanation: The marathon starts at sector 1. The order of the visited sectors is as follows:
 1 --> 2 --> 3 (end of round 1) --> 4 --> 1 (end of round 2) --> 2 (end of round 3 and the marathon)
 We can see that both sectors 1 and 2 are visited twice and they are the most visited sectors. Sectors 3 and 4 are visited only once.
 
 Example 2:
 Input: n = 2, rounds = [2,1,2,1,2,1,2,1,2]
 Output: [2]
 
 Example 3:
 Input: n = 7, rounds = [1,3,5,7]
 Output: [1,2,3,4,5,6,7]
 
 */

import Foundation

struct MostVisited{
    func mostVisited(_ n: Int, _ rounds: [Int]) {
        
        var dic = [Int : Int]()
        let start = rounds[0]
        var result = [Int]()
        
        for i in stride(from: 1, to: n, by: 1){
            dic[i] = 0
        }
        
        var count = start
        
        for i in 1..<rounds.count{
            let prevRound = rounds[i - 1]
            let currentRound = rounds[i]
            var totalRound = 0
//            if(i == 1){
//                totalRound = abs(prevRound - currentRound)
//            }else{
//                totalRound = abs(prevRound - currentRound) - 1
//            }
            
            var value = 0
            
            while(value != currentRound){
                if (count % n != 0){
                    value = count % n
                }else{
                    value = n
                }
                
                dic[value, default: 0] += 1
                count += 1
            }
            
//            for _ in 0...totalRound {
//
//                var value = start
//                if (count % n != 0){
//                    value = count % n
//                }else{
//                    value = n
//                }
//                dic[value, default: 0] += 1
//                count += 1
//            }
        }
        
        print(dic)
        
        let maxValue = dic.max { (dic1, dic2) -> Bool in
            return dic1.value < dic2.value
        }
        
        let finalDic = dic.filter { (dic) -> Bool in
            return dic.value == maxValue?.value
        }
        
        let sortedDic = finalDic.sorted { (dic1, dic2) -> Bool in
            return dic1.value > dic2.value
        }
        
        for (key, _) in sortedDic{
            result.append(key)
        }
        print(result.sorted())
    }
    
    func leetCodeSolution(_ n: Int, _ rounds: [Int]){
        let beginning = rounds.first!
        let ending = rounds.last!
        print(ending >= beginning ? Array(beginning...ending) : (Array(1...ending) + Array(beginning...n)))
    }
}
