//
//  QuizResultsView.swift
//  Tamiliva
//
//  Created by sanjithsethu on 16/3/22.
//

import SwiftUI

struct QuizResultsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State var alertPresenter = false
    @Binding var correctQuestions: Int
    @Binding var totalQuestions: Int
    @Binding var arrayWithAnswerPressed:[String]
    @Binding var wrongQuestions: [Qn]
    @State var isAlert2presented = false
    @State var progress: CGFloat = 0.0
    @State var alert1Presented = false
    
    
    var body: some View {
        VStack {
            ZStack{
                if totalQuestions == 0{
                    CircularProgressView(progress: $progress)
                        .padding()
                    Text("Oops, you have not\ndone a question yet!")
                        .foregroundColor(Color(red: 0.45098039215686275, green: 0.6313725490196078, blue: 0.9803921568627451))
                        .fontWeight(.bold)
                }else{
                    CircularProgressView(progress: $progress)
                        .padding()
                    
                    Text("\(Int(CGFloat(correctQuestions) / CGFloat(totalQuestions)*100))%")
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.45098039215686275, green: 0.6313725490196078, blue: 0.9803921568627451))
                }
                
            }.onAppear{
                alert1Presented = true
                if totalQuestions == 0 {
                    progress = 0
                }
                progress = CGFloat(correctQuestions)/CGFloat(totalQuestions)
                
            }.alert(isPresented: $alert1Presented) {
                
                Alert(title: Text("Your data will not save"),
                      message: Text("Unfortuanly, Your score will not save when you close the app. If you wish, you can record your score in the Notes tab."),
                      dismissButton: .default(Text("OK")) {
                    
                })
            }
            Text("You got \(correctQuestions)/\(totalQuestions)")
                .fontWeight(.heavy)
                .font(.system(size: 30))
                .padding()
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.61, saturation: 0.618, brightness: 0.98)/*@END_MENU_TOKEN@*/)
                .padding()
            
            
            Text("Go back to continue with your quiz")
                .fontWeight(.light)
                .font(.system(size: 20))
                .padding()
                .foregroundColor(.gray)
                .padding()
            
            Spacer()
            
        }
        .navigationTitle("Quiz Results")
        .navigationBarItems(trailing: Button(action: {
            isAlert2presented = true
        }, label: {
            Text("Reset")
                .foregroundColor(.red)
        }))
        .alert(isPresented: $isAlert2presented) {
            Alert(title: Text("Reset Score"),
                  message: Text("Are you sure you want to reset your score?"),
                  primaryButton: .cancel(),
                  secondaryButton: .destructive(Text("Yes")) {
                correctQuestions = 0
                totalQuestions = 0
                arrayWithAnswerPressed = []
                wrongQuestions = []
                presentationMode.wrappedValue.dismiss()
                
            })
        }
    }
    
}

struct QuizResultsView_Previews: PreviewProvider {
    static var previews: some View {
        QuizResultsView(correctQuestions: .constant(0), totalQuestions: .constant(0), arrayWithAnswerPressed: .constant([]), wrongQuestions: .constant([]))
    }
}
