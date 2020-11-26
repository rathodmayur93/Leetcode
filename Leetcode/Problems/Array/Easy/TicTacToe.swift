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
        var bMovess = [[Int]]()
        
        for i in 0..<moves.count{
            if(i % 2 == 0){
                aMoves.append(moves[i])
            }else{
                bMovess.append(moves[i])
            }
        }
        
        isAWinner(moves: aMoves)
    }
    
    func isAWinner(moves : [[Int]]){
        
        var isRightDiag = true
        
        for i in 0..<moves.count{
            var currentMove = moves[i]
            if(currentMove[0] == currentMove[1] && isRightDiag){
                
            }else{
                isRightDiag = false
                
            }
        }
        
        print(isRightDiag)
    }
}
