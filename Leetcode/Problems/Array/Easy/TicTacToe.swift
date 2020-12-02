//
//  TicTacToe.swift
//  Leetcode
//
//  Created by ds-mayur on 26/11/2020.
//

import Foundation

struct TicTacToe{
    func tictactoe(_ moves: [[Int]]) {
        var aMoves = [[Int]]()
        var bMoves = [[Int]]()
        
        for i in 0..<moves.count{
            if(i % 2 == 0){
                aMoves.append(moves[i])
            }else{
                bMoves.append(moves[i])
            }
        }
        
        print("===== A ========")
        isWinner2(moves: aMoves)
        print("===== B ========")
        isWinner2(moves: bMoves)
    }
    
    func isWinner2(moves : [[Int]]){
        
        var previousInt = Int.min
        var currentInt = Int.min
        
        var previousRowInt = Int.min
        var currentRowInt = Int.min
        
        var previousColInt = Int.min
        var currentColInt = Int.min
        
        var isRightDiag = false
        
        var winningSteak = 0
        var winningRowSteak = 0
        var winningColSteak = 0
        
        for i in 0..<moves.count{
            for j in 0..<moves[i].count{
                
                currentInt = previousInt
                previousInt = moves[i][j]
                
                currentRowInt = moves[i][0]
                currentColInt = moves[0][j]
                
                if (previousInt != Int.min && currentInt != Int.min){
                    
                    //Right Diagonal
                    if(previousInt == currentInt){
                        winningSteak += 1
                    }
                    
                    if(previousRowInt == currentRowInt){
                        winningRowSteak += 1
                    }
                    
                    if(previousColInt == currentColInt){
                        winningColSteak += 1
                    }
                }
                
                previousRowInt = currentRowInt
                previousColInt = currentColInt
            }
        }
        
        print(winningSteak)
        print(winningRowSteak)
        print(winningColSteak)
    }
    
    func isWinner(moves : [[Int]]){
        
        let isRightDiag = [[0,0], [1,1], [2,2]]
        let isLeftDiag = [[0,2], [1,1], [2,0]]
        
        let isRow1 = [[0,0], [0,1], [0,2]]
        let isRow2 = [[1,0], [1,1], [1,2]]
        let isRow3 = [[2,0], [2,1], [2,2]]
        
        let isCol1 = [[0,0], [1,0], [2,0]]
        let isCol2 = [[0,1], [1,1], [2,1]]
        let isCol3 = [[0,2], [1,2], [2,2]]
        
        let isWinner = false
        for i in 0..<moves.count {
            
            if(isRightDiag.contains(moves[i])){
                print("isRightDiag")
            }
            
            if(isLeftDiag.contains(moves[i])){
                print("isLeftDiag")
            }
            
            if(isRow1.contains(moves[i])){
                print("isRow1")
            }
            
            if(isRow2.contains(moves[i])){
                print("isRow2")
            }
            
            if(isRow3.contains(moves[i])){
                print("isRow3")
            }
            
            if(isCol1.contains(moves[i])){
                print("isCol1")
            }
            
            if(isCol2.contains(moves[i])){
                print("isCol2")
            }
            
            if(isCol3.contains(moves[i])){
                print("isCol3")
            }
        }
    }
}
