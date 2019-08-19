//
//  ViewController.swift
//  RPS
//
//  Created by koreanhole on 14/08/2019.
//  Copyright © 2019 권순형. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gameResult = GameState.start
    var playerRps = Sign.rock

    @IBOutlet weak var rpsStatusLabel: UILabel!
    @IBOutlet weak var catSignLabel: UILabel!
    @IBOutlet weak var playAgain: UIButton!
    
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!
    
    
    func updateElements(){
        if gameResult == GameState.start {
            catSignLabel.text = "😸"
            rpsStatusLabel.text = "Rock, Paper, Scissors?"
            playAgain.isHidden = true
            rock.isHidden = false
            paper.isHidden = false
            scissors.isHidden = false
        }
    }
    
    func updateResult(){
        let computerRps = randomSign()
        
        gameResult = gameResult.playingRPSwith(player: playerRps, computer: computerRps)
        catSignLabel.text = computerRps.rpsResult
        switch gameResult {
        case GameState.win:
            rpsStatusLabel.text = "Win"
            playAgain.isHidden = false
            
        case GameState.lose:
            rpsStatusLabel.text = "Lose"
            playAgain.isHidden = false
            
        case GameState.draw:
            rpsStatusLabel.text = "Draw"
            playAgain.isHidden = false
            
        case GameState.start:
            updateElements()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateElements()
    }

    @IBAction func rockButtonTapped(_ sender: Any) {
        playerRps = Sign.rock
        rock.isHidden = false
        paper.isHidden = true
        scissors.isHidden = true
        updateResult()
    }
    @IBAction func paperButtonTapped(_ sender: Any) {
        playerRps = Sign.paper
        rock.isHidden = true
        paper.isHidden = false
        scissors.isHidden = true
        updateResult()
    }
    @IBAction func scissorsButtonTapped(_ sender: Any) {
        playerRps = Sign.scissors
        rock.isHidden = true
        paper.isHidden = true
        scissors.isHidden = false
        updateResult()
    }
    @IBAction func playAgainButtonTapped(_ sender: Any) {
        gameResult = GameState.start
        updateElements()
    }
}

