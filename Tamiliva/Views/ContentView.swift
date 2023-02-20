//
//  ContentView.swift
//  Tamiliva
//
//  Created by sanjithsethu on 17/1/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var oliData = OliVerupaduData()
    @ObservedObject var notesData = NotesData()
    @ObservedObject var notesFavData = NotesFavData()
    @Environment(\.scenePhase) private var scenePhase
    
    @State var correctQuestions: Int = 0
    @State var totalQuestions: Int = 0
    @State var arrayWithAnswerPressed:[String] = []
    @State var wrongQuestions: [Qn] = []
    
    
    
    var array:[String] = []
    var body: some View {
        TabView {
            if #available(iOS 16.0, *) {
                OliVerupaduView(oli: $oliData.oli, indexOfOli: 0)
                    .tabItem {
                        Label("Oli verupadu", systemImage: "person.wave.2.fill")
                    }
                    .onAppear{
                        oliData.load()
                    }
                    .onDisappear{
                        oliData.save()
                    }
                    .onChange(of: scenePhase) { phase in
                        if phase == .inactive {
                            oliData.save()
                        }
                    }
            } else {
                OliVerupaduFor15View(oli: $oliData.oli, indexOfOli: 0)
                    .tabItem {
                        Label("Oli verupadu", systemImage: "person.wave.2.fill")
                    }
                    .onAppear{
                        oliData.load()
                    }
                    .onDisappear{
                        oliData.save()
                    }
                    .onChange(of: scenePhase) { phase in
                        if phase == .inactive {
                            oliData.save()
                        }
                    }
            }
            
            lettersView()
                .tabItem {
                    Label("Letters", systemImage: "headphones.circle.fill")
                }
            if #available(iOS 16.0, *) {
                SotrodargalView()
                    .tabItem {
                        Label("Sotrodargal", systemImage: "doc.append")
                    }
            } else {
                SotrodargalFor15View()
                    .tabItem {
                        Label("Sotrodargal", systemImage: "doc.append")
                    }
            }
            if #available(iOS 16.0, *) {
                NotesView(notes: $notesData.notes, notesFavourites: $notesFavData.notesFav)
                    .tabItem {
                        Label("Notes", systemImage: "note.text")
                    }.onAppear{
                        notesData.load()
                        notesFavData.load()
                    }
                    .onDisappear{
                        notesData.save()
                        notesFavData.save()
                    }
                    .onChange(of: scenePhase) { phase in
                        if phase == .inactive {
                            notesData.save()
                            notesFavData.save()
                        }
                    }
            } else {
                NotesFor15View(notes: $notesData.notes, notesFavourites: $notesFavData.notesFav)
                    .tabItem {
                        Label("Notes", systemImage: "note.text")
                    }.onAppear{
                        notesData.load()
                        notesFavData.load()
                    }
                    .onDisappear{
                        notesData.save()
                        notesFavData.save()
                    }
                    .onChange(of: scenePhase) { phase in
                        if phase == .inactive {
                            notesData.save()
                            notesFavData.save()
                        }
                    }
            }
            QuizView(correctQuestions: $correctQuestions, totalQuestions: $totalQuestions, arrayWithAnswerPressed: $arrayWithAnswerPressed, wrongQuestions: $wrongQuestions)
                .tabItem {
                    Label("Quiz", systemImage: "graduationcap.fill")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
