//
//  Guesser.swift
//  GuesingApp
//
//  Created by Nalivela,Saikumar on 2/26/19.
//  Copyright © 2019 Nalivela,Saikumar. All rights reserved.
//

import Foundation

class Guesser{
    private var correctAnswer:Int
    private var _numAttempts:Int
    private var guesses: [Guess]
    struct Guess{
        var correctAnswer:Int
        var numAttempts:Int
    }
    
    var numAttempts:Int{
        return _numAttempts
    }
    func createNewProblem(){
         correctAnswer = Int.random(in: 0..<10)
        _numAttempts = 0
        
    }
    
    func amIRight(guess:Int) -> String{
        _numAttempts = _numAttempts + 1
        if guess == correctAnswer{
            guesses.append(Guesser.Guess.init(correctAnswer: correctAnswer, numAttempts: numAttempts))
            createNewProblem()
            return Result.correct.rawValue
            
        }else if guess < correctAnswer{
            return Result.tooLow.rawValue
        }else{
            return Result.tooHigh.rawValue
        }
    }
    init(){
        self.correctAnswer = 0
        self._numAttempts = 0
        self.guesses = []
    }
    func guess() -> {
        
    }
    
    func clearStatistics(){
        guesses = []
    }
   
}
enum Result:String{
    case tooLow = "TooLow", tooHigh = "TooHigh",correct = "Correct"
}
