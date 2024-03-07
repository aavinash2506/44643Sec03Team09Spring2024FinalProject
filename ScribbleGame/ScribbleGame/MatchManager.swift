//
//  MatchManager.swift
//  ScribbleGame
//
//  Created by Vaishnavi Varaganti on 3/7/24.
//

import Foundation

class MatchManager: ObservableObject{
    @Published var authenticationSate = PlayerAuthState.authenticating
    @Published var isGameBeingPlayed = false
    @Published var isGameOver = false
    @Published var isDrawing = false
    @Published var drawPrompt = ""
    @Published var previousGuesses = [PastGuess]()
    @Published var score = 0
    @Published var remainingTime = maxTimeRemaining
}
