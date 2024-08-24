//
//  NotesDaya.swift
//  Tamiliva
//
//  Created by sanjithsethu on 20/1/22.
//

import Foundation
import SwiftUI

class NotesData: ObservableObject {
    @Published var notes: [Note] = []
    
    let sampleNotes = [Note(name: "Also", description: "You can delete these by swiping!", dateAdded: Date.now, fav: "♡")]
    
    func getArchiveURL() -> URL {
        let plistName = "notes.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedNotes = try? propertyListEncoder.encode(notes)
        try? encodedNotes?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        
        var finalNotes: [Note]!
        
        if let retrievedNotesData = try? Data(contentsOf: archiveURL),
            let decodedNotes = try? propertyListDecoder.decode([Note].self, from: retrievedNotesData) {
            finalNotes = decodedNotes
        } else {
            finalNotes = sampleNotes
        }
        
        notes = finalNotes
    }
}
