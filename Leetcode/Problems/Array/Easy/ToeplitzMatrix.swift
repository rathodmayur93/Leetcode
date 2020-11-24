//
//  ToeplitzMatrix.swift
//  Leetcode
//
//  Created by ds-mayur on 30/10/2020.
//

import Foundation

struct ToeplitzMatrix{
    func isToeplitzMatrix(_ matrix: [[Int]]) {
        
        if(matrix.count == 1){
            print(true)
        }
        
        var isMatching = false
        for i in 0..<matrix.count{
            if(matrix[i].count == 1){
                isMatching = true
            }
            for j in  0..<matrix[i].count{
                //debugPrint(mastrix[i][j])
                if(i != 0 && j != 0){
                    if(matrix[i][j] == matrix[i - 1][j - 1]){
                        isMatching = true
                    }else{
                        isMatching = false
                        break
                    }
                }
            }
        }
        
        print(isMatching)
    }
}
