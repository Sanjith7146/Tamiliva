//
//  NotesDescriptionView.swift
//  Tamiliva
//
//  Created by sanjithsethu on 25/2/22.
//

import SwiftUI

struct NotesDescriptionView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State var showAlert1 = false
    @Binding var note: Note
    @State var noteThatIsNotChanged: Note
    @FocusState private var focusedField
    @State var showAlert2 = false
    
    var body: some View {
        VStack(alignment:.leading){
            TextEditor(text: $note.name)
                .focused($focusedField, equals: false)
                .font(Font.largeTitle.weight(.heavy))
                .lineLimit(1)
                .background(.blue)
                .padding([.leading, .trailing])
                .frame(width: .infinity, height: 100, alignment: .topLeading)
                .foregroundColor(Color(hue: 0.58, saturation: 1.0, brightness: 1.0))
                .font(Font.headline.weight(.heavy))
                .padding(.top)
            
            TextEditor(text: $note.description)
                .font(.system(size: 25))
                .padding(.horizontal, 15)
                .focused($focusedField, equals: true)
            
            
            
            
        }
        .onChange(of: note.name, perform: { _ in
            
            if note.name.count >= 25 {
                focusedField = true
            }
            if note.name.count == 25{
                showAlert2 = true
            }
        })
        .alert(isPresented: $showAlert2){
            Alert(title: Text("Limit exceeded"), message: Text("Titles have a character limit of 25. Characters after the 25th will be moved to your note."))
        }
        .navigationBarItems(trailing: Button {
            
            if note.description != noteThatIsNotChanged.description || note.name != noteThatIsNotChanged.name{
                note.description = noteThatIsNotChanged.description
                note.name = noteThatIsNotChanged.name
                
            }
            else{
                showAlert1 = true
            }
        } label: {
            Text("Undo")
                .foregroundColor(.red)
        }
            .alert(isPresented: $showAlert1){
                Alert(title: Text("Nothing to undo"), message: Text("This is your original note that you had wrriten last time"))
            })
        
        .navigationBarTitle(Text(""), displayMode: .inline)
        
        
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
    
    struct NotesDescriptionView_Previews: PreviewProvider {
        static var previews: some View {
            NotesDescriptionView(note: .constant(Note(name: "", description: "", dateAdded: Date.now, fav: "♡")), noteThatIsNotChanged: Note(name: "", description: "", dateAdded: Date.now, fav: "♡" ))
        }
    }
    
}

