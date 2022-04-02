//
//  NotesDaya.swift
//  Tamiliva
//
//  Created by sanjithsethu on 20/1/22.
//

import Foundation

struct Note : Identifiable, Equatable, Codable, Hashable {
    var id = UUID()
    var name : String
    var description: String
    var dateAdded: Date
    var fav: String
}
