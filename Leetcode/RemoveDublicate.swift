//
//  RemoveDublicate.swift
//  Leetcode
//
//  Created by ds-mayur on 28/9/2020.
//

import Foundation

struct RemoveDublicateItems{
    
    func perfromRemoveDublicateOperation(_ arr : inout [Int]) -> Int{
        
        if(arr.count == 0 || arr.count == 1) { return arr.count }
        else if (arr.count == 2){
            if(arr[0] == arr[1]){
                return 1
            }else{
                return 2
            }
        }
        
        var length = arr.count
        
        //[0,0,1,1,1,2,2,3,3,4]
        for i in (0..<length-1).reversed(){
            if(arr[i + 1] == arr[i]){
                arr.remove(at: i)
//                //Perform the deletion algo
//                for j in i+1..<(length){
//                    arr[j - 1] = arr[j]
//                }
                
                //Reduce the length by 1
                length -= 1
            }
        }
        
        return length
    }
}
