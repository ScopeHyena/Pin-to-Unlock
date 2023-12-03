//
// GameModel.swift
//
// 12.03 2023 by Scope.H
//
//

import Foundation

enum DigitStatus: String {
    // correct = place - o, number - o
    // misplaced = place - x, number - o
    case correct, misplaced, wrong
}

struct Guess {
    let index: Int
    var PIN = "      "
    var guessDigit: [String] {
        PIN.map { String($0) }
    }
}

public class Game {
    // set PIN as random 6-digits number
    let rightPIN = String(format: "%06d", Int.random(in: 0...999999))
    // Set of Game
    var trial = 0
    var guesses = [Guess]()
    
    func logTrial (guess: String) {
        while trial < 10 {
            self.guesses[trial].PIN = guess
            self.guesses.append(Guess(index: trial)) 
            trial += 1
        }
    }
}
