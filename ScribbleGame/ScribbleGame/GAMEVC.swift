//
//  GAMEVC.swift
//  ScribbleGame
//
//  Created by Venkata Sai Sandeep Nirujogi on 4/12/24.
//

import UIKit

import UIKit

class GAMEVC: UIViewController {
    
    @IBOutlet weak var drawingView: DrawingView!
    
    @IBOutlet weak var chatTextView: UITextView!
    
    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var guessTextField: UITextField!
    
    @IBOutlet weak var sendButton: UIButton!
    
    var sendBt: UIButton!
        
        var currentWord: String = ""
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            setupDrawingView()
            startNewGame()
        }
        
    func setupDrawingView() {
        drawingView.lineWidth = 3.0
        drawingView.lineColor = UIColor.black
    }

        
        @IBAction func startGameButtonTapped(_ sender: UIButton) {
            startNewGame()
        }
        
        func startNewGame() {
            
            drawingView.clear()
            guessTextField.text = ""
            
           
            currentWord = chooseRandomWord()
            wordLabel.text = currentWord
        }
        
        func chooseRandomWord() -> String {
            let words = ["apple", "banana", "orange", "grape", "pineapple"]
            return words.randomElement() ?? "apple"
        }
        
        @IBAction func sendMessageButtonTapped(_ sender: UIButton) {
            checkGuess()
        }
        
        func checkGuess() {
            guard let guess = guessTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines), !guess.isEmpty else {
                return
            }
            
            if guess.lowercased() == currentWord.lowercased() {
                
                wordLabel.text = "Congratulations! You guessed it!"
                
                startNewGame()
            } else {
               
                wordLabel.text = "Try again!"
                
            }
            
            
            guessTextField.text = ""
            
            
            view.endEditing(true)
        }
    }

//    extension GAMEVC: DrawingViewDelegate {
//        // Implement drawing delegate methods if needed
//    }

