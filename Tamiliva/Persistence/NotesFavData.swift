//
//  NotesFavData.swift
//  Tamiliva
//
//  Created by sanjithsethu on 1/3/22.
//

import Foundation
import SwiftUI

class NotesFavData: ObservableObject {
    @Published var notesFav: [Note] = []
    
    let sampleNotesFav = [Note(name: "Hey", description: "Add your Own note by clicking the plus icon", dateAdded: Date.now, fav: "♥︎")]
    
    func getArchiveURL() -> URL {
        let plistName = "notesFav.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedNotesFav = try? propertyListEncoder.encode(notesFav)
        try? encodedNotesFav?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        
        var finalNotesFav: [Note]!
        
        if let retrievedNotesFavData = try? Data(contentsOf: archiveURL),
            let decodedNotesFav = try? propertyListDecoder.decode([Note].self, from: retrievedNotesFavData) {
            finalNotesFav = decodedNotesFav
        } else {
            finalNotesFav = sampleNotesFav
        }
        
        notesFav = finalNotesFav
    }
}
