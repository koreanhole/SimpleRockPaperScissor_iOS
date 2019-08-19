//
//  Sign.swift
//  RPS
//
//  Created by koreanhole on 14/08/2019.
//  Copyright © 2019 권순형. All rights reserved.
//

import Foundation
import GameplayKit

//if variable 0: rock, 1: paper, 2: scissor

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign{
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    }
    else if sign == 1 {
        return .paper
    }
    else {
        return .scissors
    }
}

enum Sign{
    case rock, paper, scissors
    
    var rpsResult: String{
        switch self {
        case .rock:
            return "👊🏼"
        case .paper:
            return "✋🏼"
        case .scissors:
            return "✌🏼"
        }
    }
}
