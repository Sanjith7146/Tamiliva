//
//  MistakesView.swift
//  Tamiliva
//
//  Created by Tanish Jayachandran on 16/3/22.
//

import SwiftUI
struct MistakesView: View {
    @State var wrongQuestion: [Qn]
    @State var arrayWithWrongAnswers: [String]
    @State var alert1Presented = false
    
    var body: some View {
        ScrollView{
            VStack{
                if wrongQuestion == []{
                    Text("You have not made any mistakes so far. Good Job, Keep it up!")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.581, saturation: 0.876, brightness: 0.898))
                        .padding()
                }else{
                    ForEach(Array(zip(wrongQuestion, arrayWithWrongAnswers)), id: \.0 ){ i in
                        Text(i.0.query)
                            .foregroundColor(Color(red: 0.00392156862745098, green: 0.3686274509803922, blue: 0.7137254901960784))
                            .padding()
                        
                        Text("Correct Answer: \(i.0.Answer1)")
                            .foregroundColor(Color(red: 0.157, green: 0.538, blue: 0.046))
                            .padding([.leading, .bottom, .trailing])
                            .padding(.horizontal)
                        
                        Text("Your Answer: \(i.1)")
                            .foregroundColor(.red)
                            .padding([.leading, .bottom, .trailing])
                            .padding(.horizontal)
                        
                        Divider()
                    }
                }
            }
        }
        .onAppear{
            alert1Presented = true
        }
        .navigationBarTitle("Your Mistakes")
        .alert(isPresented: $alert1Presented) {
            
            Alert(title: Text("Your Data will not Save"),
                  message: Text("Unfortuanly, All of your mistakes will not save when you close the App. Please take a good look at your mistakes and you can also type down your critical mistakes in the Notes Tab!"),
                  dismissButton: .default(Text("OK")) {
                
            })
        }
    }
    
    struct MistakesView_Previews: PreviewProvider {
        static var previews: some View {
            MistakesView(wrongQuestion: [Qn(query:"அவள் என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"she", Answer2:"rice flake", Answer3:"banana", Wrong: false), Qn(query:"அழகு என்ற வார்த்தையின் அர்த்தம் என்ன ?", Answer1:"beauty", Answer2:"beak", Answer3:"prayer" , Wrong: false)], arrayWithWrongAnswers: ["hello", "", ""])
        }
    }
}
