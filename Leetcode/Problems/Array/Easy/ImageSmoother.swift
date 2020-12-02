//
//  ImageSmoother.swift
//  Leetcode
//
//  Created by ds-mayur on 27/11/2020.
// problem: https://leetcode.com/problems/image-smoother/
/**
 Given a 2D integer matrix M representing the gray scale of an image, you need to design a smoother to make the gray scale of each cell becomes the average gray scale (rounding down) of all the 8 surrounding cells and itself. If a cell has less than 8 surrounding cells, then use as many as you can.
 Example 1:
 Input:
 [[1,1,1],
  [1,0,1],
  [1,1,1]]
 Output:
 [[0, 0, 0],
  [0, 0, 0],
  [0, 0, 0]]
 Explanation:
 For the point (0,0), (0,2), (2,0), (2,2): floor(3/4) = floor(0.75) = 0
 For the point (0,1), (1,0), (1,2), (2,1): floor(5/6) = floor(0.83333333) = 0
 For the point (1,1): floor(8/9) = floor(0.88888889) = 0
 
**Solution:**
 Runtime: 980 ms, faster than 11.11% of Swift online submissions for Image Smoother.
 Memory Usage: 15 MB, less than 66.67% of Swift online submissions for Image Smoother.
 
 */

import Foundation

struct ImageSmoother{
    
    func imageSmoother(_ arr: [[Int]]) {
        
        var result = [[Int]]()
        var neighbourCount : CGFloat = 0
        var sum : Int = 0
        let m = arr.count
        let n = arr[0].count
        
        for i in 0..<m{
            var row = [Int]()
            for j in 0..<n{
                
                neighbourCount = 0
                sum = 0
                
                //Right Element
                if(0..<n ~= j + 1){ //&& (abs(j + 1 - i)) <= 1
                    neighbourCount += 1
                    sum += arr[i][j + 1]
                }
                
                //Left Element
                if(0..<n ~= j - 1 ){ //&& (abs(j - 1 - i)) <= 1
                    neighbourCount += 1
                    sum += arr[i][j - 1]
                }
                
                //Bottom Right Element
                if((0..<m ~= i + 1 && 0..<n ~= j + 1) ){ //&& (abs(j - i)) <= 1
                    neighbourCount += 1
                    sum += arr[i+1][j+1]
                }
                
                //Bottom Left Element
                if((0..<m ~= i + 1 && 0..<n ~= j - 1) ){ //&& (abs(j - i)) <= 1
                    neighbourCount += 1
                    sum += arr[i+1][j-1]
                }
                
                //Top Right Element
                if((0..<m ~= i - 1 && 0..<n ~= j + 1)){ // && (abs(j - i)) <= 1
                    neighbourCount += 1
                    sum += arr[i-1][j+1]
                }
                
                //Top Left Element
                if((0..<m ~= i - 1 && 0..<n ~= j - 1)){ // && (abs(j - i)) <= 1
                    neighbourCount += 1
                    sum += arr[i-1][j-1]
                }
                
                //Top Element
                if(0..<m ~= i - 1 ){ //&& (abs(i - 1 - j)) <= 1
                    neighbourCount += 1
                    sum += arr[i-1][j]
                }
                
                //Bottom Element
                if(0..<m ~= i + 1){ // && (abs(i + 1 - j)) <= 1
                    neighbourCount += 1
                    sum += arr[i+1][j]
                }
                print("\(i)\(j)")
                print(sum + arr[i][j])
                print(neighbourCount + 1)
                let average = CGFloat(sum + arr[i][j]) / CGFloat(neighbourCount + 1)
                print(average.rounded(.down))
                row.append(Int(floor(average)))
                
                print("=========")
            }
            
            result.append(row)
        }
        
        print(result)
    }
}

/*
 //                for k in stride(from: 0, to: m, by: 1){
 //                    for l in stride(from: 0, to: n, by: 1){
 //                        let gap = max(abs(k - i), abs(l - j))
 //                        if(gap <= 1){
 //                            neighbourCount += 1
 //                            sum += CGFloat(arr[k][l])
 //                        }
 //                    }
 //                }
 */

/*
if(i == m && j == n){
    print("\(i)\(j) Count: \(3 * ( (n - i) + (n - j) + 1))")
    sum = CGFloat(3 * ((n - i) + (n - j) + 1))
}else if(i == m){
    print("\(i)\(j) Count: \(3 * ( (n - i) + (j) + 1))")
    sum = CGFloat(3 * ((n - i) + j + 1))
}else if((j == n)){
    print("\(i)\(j) Count: \(3 * ( i + (n - j) + 1))")
    sum = CGFloat(3 * (i + (n - j) + 1))
}else {
    print("\(i)\(j) Count: \(3 * ( i + (j) + 1))")
    sum = CGFloat(3 * (i + j + 1))
}


if((i == 0 && j == 0) || (i == m && j == n) || (i == 0 && j == n) || (i == m && j == 0)){
    neighbourCount = 4
    //print(neighbourCount)
}else if((i > 0 && j == 0) || (i == 0 && j > 0) || (i > 0 && j == n) || (i == m && j > 0)){
    neighbourCount = 6
    //print(neighbourCount)
}else{
    neighbourCount = 9
    //print(neighbourCount)
}

if(i - 1 >= 0){
    
}

if(i == 0 && neighbourCount == 4){
    let origin = arr[i][j]
    let originRight = arr[i][j+1]
    let originDiag = arr[i+1][j+1]
    let originBelow = arr[i+1][j]
    sum = CGFloat(origin + originRight + originDiag + originBelow)
}else if( i == m && neighbourCount == 4){
    let origin = arr[i][j]
    let originLeft = arr[i][j-1]
    let originDiag = arr[i-1][j-1]
    let originTop = arr[i-1][j]
    sum = CGFloat(origin + originLeft + originDiag + originTop)
}else if(i == 0 && neighbourCount == 6){
    let origin = arr[i][j]
    let originRight = arr[i][j+1]
    let originLeft = arr[i][j-1]
    let originDiagBottomRight = arr[i+1][j+1]
    let originDiagBottomLeft = arr[i+1][j-1]
    let originBelow = arr[i+1][j]
    sum = CGFloat(origin + originRight + originLeft + originDiagBottomRight + originDiagBottomLeft + originBelow)
}else if(i == m && neighbourCount == 6){
    let origin = arr[i][j]
    let originRight = arr[i][j+1]
    let originLeft = arr[i][j-1]
    let originDiagTopRight = arr[i-1][j+1]
    let originDiagTopLeft = arr[i-1][j-1]
    let originTop = arr[i-1][j]
    sum = CGFloat(origin + originRight + originLeft + originDiagTopRight + originDiagTopLeft + originTop)
}else if(neighbourCount == 9){
    let origin = arr[i][j]
    let originRight = arr[i][j+1]
    let originLeft = arr[i][j-1]
    
    let originDiagTopRight = arr[i-1][j+1]
    let originDiagTopLeft = arr[i-1][j-1]
    let originTop = arr[i-1][j]
    
    let originDiagBottomRight = arr[i+1][j+1]
    let originDiagBottomLeft = arr[i+1][j-1]
    let originBelow = arr[i+1][j]
    
    sum = CGFloat(origin + originRight + originLeft + originDiagTopRight + originDiagTopLeft + originTop + originDiagBottomRight + originDiagBottomLeft + originBelow)
}

print("==== SUM ===")
print(sum)
//let smootherValue = floor(CGFloat(arr[i][j]) / (sum))
//row.append(Int(smootherValue))
 */
