//
//  LettersData.swift
//  Tamiliva
//
//  Created by sanjithsethu on 19/1/22.
//

import Foundation

struct letterWithSound: Identifiable{
    var id = UUID()
    var letter: String
    var sound: String
    var section: String
}
