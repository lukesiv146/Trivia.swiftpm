//
//  SwiftUIView.swift
//  
//
//  Created by Luke J. Sivulka on 11/30/23.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager

    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Trivia")
                    .lilacTitle()

                Text("Congrats, You are Done!")
                
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)")
                
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Play again")
                }
            }
            .foregroundColor(Color(.black))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.484313725490196, green: 0.2294117647058824, blue: 0.7470588235294118))
        } else {
            QuestionView()
                .environmentObject(triviaManager)
        }
    }
}

