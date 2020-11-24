//
//  FindShortestSubArray.swift
//  Leetcode
//
//  Created by ds-mayur on 25/11/2020.
//

import Foundation

struct FindShortestSubArray{
    func findShortestSubArray(_ nums: [Int]) {
        
        let n = nums.count
        var frequentNo = 0
        var highFreqElement = [Int]()
        var dic = [Int : Int]()
        var minSubArr = Int.max
        
        for i in 0..<n{
            dic[nums[i], default: 0] += 1
        }
        
        let maxDic = dic.max(by: { (dic1, dic2) -> Bool in
            dic1.value < dic2.value
        })
        
        frequentNo = maxDic?.value ?? 0
        for (key,value) in dic where value == frequentNo {
            highFreqElement.append(key)
        }
        
        for i in 0..<highFreqElement.count{
            var k = 0
            var j = n - 1
            
            while ((nums[k] != highFreqElement[i] || nums[j] != highFreqElement[i])){
                
                if(nums[k] != highFreqElement[i]){
                    k += 1
                }
                
                if(nums[j] != highFreqElement[i]){
                    j -= 1
                }
            }
            
            minSubArr = min(minSubArr, ((j - k) + 1))
            print("SubArray \((j - k) + 1)")
        }
    }
}
