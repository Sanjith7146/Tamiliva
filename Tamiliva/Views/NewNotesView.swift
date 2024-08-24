//
//  NewNotesVC.swift
//  Tamiliva
//
//  Created by sanjithsethu on 25/2/22.
//

import SwiftUI

struct NewNotesVC: View {
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var evente: [Note]
    @State var eventsss = Note(name: "Title here",
                               description: "Your note here", dateAdded: Date.now, fav: "♡")
    @FocusState private var focusedField
    @State var showAlert2 = false
    @State var showAlert1 = false
    
    var body: some View {
        VStack(alignment: .leading){
            
            
            TextEditor(text: $eventsss.name)
                .focused($focusedField, equals: false)
                .font(Font.largeTitle.weight(.heavy))
                .lineLimit(1)
                .background(.blue)
                .padding([.leading, .trailing])
                .frame(width: .infinity, height: 100, alignment: .topLeading)
                .foregroundColor(Color(hue: 0.58, saturation: 1.0, brightness: 1.0))
                .font(Font.headline.weight(.heavy))
                .padding(.top)
            
            TextEditor(text: $eventsss.description)
                .font(.system(size: 25))
                .padding(.horizontal, 15)
                .focused($focusedField, equals: true)
            
            
        }
        .onChange(of: eventsss.name, perform: { _ in
            
            if eventsss.name.count >= 25 {
                focusedField = true
            }
            if eventsss.name.count == 25{
                showAlert2 = true
            }
        })
        .alert(isPresented: $showAlert2){
            Alert(title: Text("Limit exceeded"), message: Text("Titles have a character limit of 25. Characters after the 25th will be moved to your note."))
        }
        .navigationBarTitle(Text(""), displayMode: .inline)
        .onDisappear{
            withAnimation{
                if eventsss.name != "Enter Title here" || eventsss.description != "Enter your note here" {
                    
                    evente.append(eventsss)
                }
                
                
            }
        }
    }
}
func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    let nextTag = textField.tag + 1
    
    if let nextResponder = textField.superview?.viewWithTag(nextTag) {
        nextResponder.becomeFirstResponder()
    } else {
        textField.resignFirstResponder()
    }
    
    return true
}

func dateformmtter(date: Date) -> String{
    let formatter = DateFormatter()
    formatter.dateFormat = "hh:mm a"
    return formatter.string(from: date)
}
struct NewNotesVC_Previews: PreviewProvider {
    static var previews: some View {
        NewNotesVC(evente: .constant([]))
            .preferredColorScheme(.light)
    }
}
