//
//  SwiftUIView.swift
//  
//
//  Created by Luke J. Sivulka on 11/30/23.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManager

    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("Trivia")
                    .lilacTitle()
                
                Spacer()
                
                Text("\(triviaManager.index + 1) / \(triviaManager.length)")
                    .foregroundColor(Color(.black))
                    .fontWeight(.heavy)
            }
            
            ProgressBar(progress: triviaManager.progress)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(triviaManager.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.black)
                
                ForEach(triviaManager.answerChoices, id: \.id) { answer in
                    AnswerRow(answer: answer)
                        .environmentObject(triviaManager)
                }
            }
            
            Button {
                triviaManager.goToNextQuestion()
            } label: {
                PrimaryButton(text: "Next", background: triviaManager.answerSelected ? Color(.black) : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
            }
            .disabled(!triviaManager.answerSelected)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(Color(red: 0.484313725490196, green: 0.2294117647058824, blue: 0.7470588235294118))
        .navigationBarHidden(true)
    }
}

