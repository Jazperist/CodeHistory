//
//  ContentView.swift
//  CodeHistory
//
//  Created by Rodrigo Garcia Olvera on 05/01/23.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    var body: some View {
        ZStack{
            GameColor.main.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }.foregroundColor(.white)
             .navigationBarHidden(true)
             .environmentObject(viewModel)
            
        }
        .background(
            NavigationLink(destination: ScoreView(viewModel:ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)),
                              isActive: .constant(viewModel.gameIsOver),
                              label: { EmptyView() })
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
