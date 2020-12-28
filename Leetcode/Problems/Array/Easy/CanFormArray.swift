//
//  CanFormArray.swift
//  Leetcode
//
//  Created by ds-mayur on 22/12/2020.
//

import Foundation

struct CanFormArray {
    
    func canFormArray(_ arr: [Int], _ pieces: [[Int]]) {
        
        var isForming = false
        var m = 0
        var j = 0
        
        for i in 0..<pieces.count{
            if(pieces[i].count == 1){
                if(arr.contains(pieces[i][0])){
                    isForming = true
                }else{
                    isForming = false
                }
            }else if(pieces[i].count > 1){
                
                j = pieces[i].count - 1
                
                while (m < (arr.count - j)) {
                    
                    //Creating window
                    let subArr = Array(arr[m...(m + j)])
                    
                    for x in 0..<subArr.count{
                        if(subArr[x] == pieces[i][x]){
                            isForming = true
                        }
                    }
                    //Sliding the window
                    m += 1
                }
            }
        }
        
        print(isForming)
    }
}
