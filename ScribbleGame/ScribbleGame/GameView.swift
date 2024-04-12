//
//  GameView.swift
//  ScribbleGame
//
//  Created by Tejeshreddy on 4/12/24.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var matchManager: MatchManager
    @State var drawingGuess =""
    @State var eraserEnable = ""
    func makeGuess() {
        
    }
    var body: some View {
        ZStack{
            GeometryReader{ _ in
                Image(MatchManager.currentlyDrawing ? "drawBg" :
                        "guessrBg")
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
                .scaleEffect(1.1)
                VStack{
                    
                }
            }
        }
    }
    
