import SwiftUI

struct ContentView: View {
    @StateObject var triviaManager = TriviaManager()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Trivia")
                        .lilacTitle()
                    
                    Text("Ready for Trivia?")
                        .foregroundColor(Color(.black))
                }
                
                NavigationLink {
                    TriviaView()
                        .environmentObject(triviaManager)
                } label: {
                    PrimaryButton(text: "Start Now")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(red: 0.484313725490196, green: 0.2294117647058824, blue: 0.78470588235294118))
        }
    }
}


