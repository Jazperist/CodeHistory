//
//  ScoreViewModel.swift
//  CodeHistory
//
//  Created by Rodrigo Garcia Olvera on 25/01/23.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int 
    let incorrectGuesses: Int
    
    var percetage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
    
}
