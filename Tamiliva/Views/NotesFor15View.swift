//
//  NotesView.swift
//  Tamiliva
//
//  Created by sanjithsethu on 20/1/22.
//

import SwiftUI

struct NotesFor15View: View {
    @Binding var notes: [Note]
    @Binding var notesFavourites: [Note]
    
    @State var dummyArray: [Note] = []
    @State private var searchText = ""
    @State var selectedNote: Note? = nil
    @State var isSheetEnabled2 = false
    var notNoteFav1: [Note] {
        return notes.filter { $0.fav.contains("♡") }
    }
    var noteFav1: [Note] {
        return notes.filter { $0.fav.contains("♥︎") }
    }
    
    
    
    var body: some View {
        
        NavigationView {
            VStack(alignment:.leading){
                Text(" Tap on one of your notes to edit")
                    .foregroundColor(Color(red: 0.0, green: 0.3686274509803922, blue: 0.7137254901960784))
                    .font(.system(size: 14))
                    .padding([.leading, .trailing])
                
                List {
                    Section(header: Text("Favourites")){
                        ForEach($notesFavourites) { $event in
                            
                            NavigationLink(destination: NotesDescriptionView(note: $event, noteThatIsNotChanged: event)
                            )  {
                                
                                VStack(alignment:.leading){
                                    
                                    Spacer()
                                    
                                    
                                    
                                    Text(event.name)
                                        .font(.system(size: 24))
                                        .foregroundColor(Color(red: 0.0, green: 0.27450980392156865, blue: 0.6862745098039216))
                                        .fontWeight(.heavy)
                                    
                                    Text("")
                                        .font(.system(size:10))
                                    
                                    Text(dateformmtter(date: event.dateAdded))
                                        .font(.system(size: 14))
                                        .foregroundColor(Color(red: 0.0, green: 0.3686274509803922, blue: 0.7137254901960784))
                                        .fontWeight(.light)
                                    
                                    
                                    Spacer()
                                    HStack{
                                        
                                        Text(event.description)
                                            .font(.system(size: 16))
                                            .foregroundColor(Color(red: 0.0, green: 0.3686274509803922, blue: 0.7137254901960784))
                                            .fontWeight(.light)
                                            .lineLimit(1)
                                        
                                        Spacer()
                                        
                                        Button {
                                            withAnimation{
                                                notes.insert(event, at: 0)
                                                notesFavourites.remove(at: notesFavourites.firstIndex(of: event) ?? 0)
                                            }
                                        } label: {
                                            Text("♥︎")
                                                .foregroundColor(.red)
                                                .font(.system(size: 30))
                                        }
                                        
                                    }
                                    
                                }
                                
                                .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                .cornerRadius(20)
                                .padding(.vertical, 1)
                                .listRowSeparator(.hidden)
                                
                                
                            }.padding()
                                .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                .cornerRadius(20)
                                .padding(.vertical, 1)
                                .listRowSeparator(.hidden)
                        }.onDelete { offsets in
                            notesFavourites.remove(atOffsets: offsets)
                        }.onMove { source, destination in
                            notesFavourites.move(fromOffsets: source, toOffset: destination)
                        }
                    }.font(.system(size: 20))
                        .foregroundColor(Color(red: 25/255, green: 66/255, blue: 126/255))
                        .textCase(nil)
                    
                    
                        .listStyle(.plain)
                        .buttonStyle(.plain)
                    
                    Section(header: Text("All")){
                        ForEach($notes) { $event in
                            
                            NavigationLink(destination: NotesDescriptionView(note: $event, noteThatIsNotChanged: event))  {
                                
                                VStack(alignment:.leading){
                                    
                                    Spacer()
                                    
                                    
                                    
                                    Text(event.name)
                                        .font(.system(size: 24))
                                        .foregroundColor(Color(red: 0.0, green: 0.27450980392156865, blue: 0.6862745098039216))
                                        .fontWeight(.heavy)
                                    
                                    Text("")
                                        .font(.system(size:10))
                                    
                                    Text(dateformmtter(date: event.dateAdded))
                                        .font(.system(size: 14))
                                        .foregroundColor(Color(red: 0.0, green: 0.3686274509803922, blue: 0.7137254901960784))
                                        .fontWeight(.light)
                                    ///  .lineLimit(1)
                                    
                                    
                                    Spacer()
                                    HStack{
                                        
                                        Text(event.description)
                                            .font(.system(size: 16))
                                            .foregroundColor(Color(red: 0.0, green: 0.3686274509803922, blue: 0.7137254901960784))
                                            .fontWeight(.light)
                                            .lineLimit(1)
                                        
                                        Spacer()
                                        
                                        Button {
                                            withAnimation{
                                                notesFavourites.insert(event, at: 0)
                                                notes.remove(at: notes.firstIndex(of: event) ?? 0)
                                            }
                                        } label: {
                                            Text("♡")
                                                .foregroundColor(.black)
                                                .font(.system(size: 30))
                                        }
                                        
                                    }
                                    
                                }
                                
                                .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                .cornerRadius(20)
                                .padding(.vertical, 1)
                                .listRowSeparator(.hidden)
                                
                                
                            }.padding()
                                .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                .cornerRadius(20)
                                .padding(.vertical, 1)
                                .listRowSeparator(.hidden)
                        }.onDelete { offsets in
                            notes.remove(atOffsets: offsets)
                        }.onMove { source, destination in
                            notes.move(fromOffsets: source, toOffset: destination)
                        }
                    }
                    .font(.system(size: 20))
                    .foregroundColor(Color(red: 25/255, green: 66/255, blue: 126/255))
                    .textCase(nil)
                    
                    .listStyle(.plain)
                    .buttonStyle(.plain)
                    
                    
                }
                
                .buttonStyle(.plain)
                .navigationBarTitle(Text("Notes"))
                .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                .navigationBarItems(trailing: NavigationLink(destination: NewNotesVC(evente: $notes)){
                    Image(systemName: "plus")
                })
                
                .navigationBarItems(trailing: EditButton())
            }
            .onAppear{
                print("from here")
                print(notes.filter({ "\($0.fav)" == "\("♥︎")"}))
                
                print(notes.filter({ "\($0.fav)" == "\("♡")"}))
                
                print($notes)
                
            }
        }
        .navigationViewStyle(DefaultNavigationViewStyle())
    }
    
    struct NotesFor15View_Previews: PreviewProvider {
        static var previews: some View {
            NotesFor15View(notes: .constant([Note(name: "Tamil Phrases", description: "I am a tamil man and I am very proud of that. COOOOOOOOLLLL", dateAdded: Date.now, fav: "♡")]), notesFavourites: .constant([Note(name: "Nice", description: "All works, but ddoes it????", dateAdded: Date.now, fav: "♥︎")]))
        }
    }
}
