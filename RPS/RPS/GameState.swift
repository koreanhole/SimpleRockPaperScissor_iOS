//
//  GameState.swift
//  RPS
//
//  Created by koreanhole on 14/08/2019.
//  Copyright © 2019 권순형. All rights reserved.
//


//if variable 0: rock, 1: paper, 2: scissor


import Foundation

//var player = Sign.paper //사용자의 가위바위보
var opponent = randomSign() //컴퓨터의 가위바위보

enum GameState{
    case start, win, lose, draw
    
    func playingRPSwith(player:Sign, computer: Sign) -> GameState {
        switch computer {
        case .rock: //컴퓨터가 바위를 낼때
            if player == Sign.rock {
                return .draw //사용자가 바위일 경우
            }
            else if player == Sign.paper {
                return .win //사용자가 보일 경우
            }
            else{
                return .lose //사용자가 가위일 경우
            }
        case .paper:
            if player == Sign.rock {
                return .lose
            }
            else if player == Sign.paper {
                return .draw
            }
            else{
                return .win
            }
        case .scissors:
            if player == Sign.rock {
                return .win
            }
            else if player == Sign.paper {
                return .lose
            }
            else{
                return .draw
            }
        }
    }
}


