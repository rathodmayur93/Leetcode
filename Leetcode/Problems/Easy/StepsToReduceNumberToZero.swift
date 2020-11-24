//
//  StepsToReduceNumberToZero.swift
//  Leetcode
//
//  Created by ds-mayur on 14/10/2020.
//

import Foundation


struct StepsToReduceNumberToZero{
    func numberOfSteps (_ num: Int) {
        
        var number = num
        var noOfStep = 0
        
        while (number != 0){
            if(number % 2 != 0){
                number -= 1
            }else{
                number = number/2
            }
            
            noOfStep += 1
        }
        
        print(noOfStep)
    }
}
