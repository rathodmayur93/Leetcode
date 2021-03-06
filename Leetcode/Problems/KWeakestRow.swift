//
//  KWeakestRow.swift
//  Leetcode
//
//  Created by ds-mayur on 25/10/2020.
// problem: https://leetcode.com/problems/the-k-weakest-rows-in-a-matrix/
/*
 Given a m * n matrix mat of ones (representing soldiers) and zeros (representing civilians), return the indexes of the k weakest rows
 in the matrix ordered from the weakest to the strongest.A row i is weaker than row j, if the number of soldiers in row i is less than
 the number of soldiers in row j, or they have the same number of soldiers but i is less than j. Soldiers are always stand in the
 frontier of a row, that is, always ones may appear first and then zeros.
 
 Example 1:
 Input: mat =
 [[1,1,0,0,0],
  [1,1,1,1,0],
  [1,0,0,0,0],
  [1,1,0,0,0],
  [1,1,1,1,1]],
 k = 3
 Output: [2,0,3]
 Explanation:
 The number of soldiers for each row is:
 row 0 -> 2
 row 1 -> 4
 row 2 -> 1
 row 3 -> 2
 row 4 -> 5
 Rows ordered from the weakest to the strongest are [2,0,3,1,4]
 
 Example 2:
 Input: mat =
 [[1,0,0,0],
  [1,1,1,1],
  [1,0,0,0],
  [1,0,0,0]],
 k = 2
 Output: [0,2]
 Explanation:
 The number of soldiers for each row is:
 row 0 -> 1
 row 1 -> 4
 row 2 -> 1
 row 3 -> 1
 Rows ordered from the weakest to the strongest are [0,2,3,1]
 */

import Foundation


struct WeakRow {
    var index : Int!
    var value : Int!
}

struct KWeakestRow{
    
    func kWeakestRows(_ mat: [[Int]], _ k: Int) {
        
        var result = [Int]()
        var weakRowList = [WeakRow]()
        for i in 0..<mat.count{
            var count = 0
            for j in 0..<mat[i].count{
                count += mat[i][j] == 1 ? 1 : 0
            }
            weakRowList.append(WeakRow(index: i, value: count))
        }
        
        let sortedWeakRowList = weakRowList.sorted { (row1, row2) -> Bool in
            return row1.value < row2.value
        }
        
        for i in 0..<k{
            result.append(sortedWeakRowList[i].index)
        }
        
        print(sortedWeakRowList)
        print(result)
    }
}
