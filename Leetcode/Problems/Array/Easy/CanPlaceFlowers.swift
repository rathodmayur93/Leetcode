//
//  CanPlaceFlowers.swift
//  Leetcode
//
//  Created by ds-mayur on 16/12/2020.
//

import Foundation

struct CanPlaceFlowers {
    
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) {
        
        let flowerDic = [Int : Int]()
        
        flowerDic = flowerbed.reduce(into: dic, { ([:], value) in
            dic[value, default: 0] += 1
        })
    }
}
