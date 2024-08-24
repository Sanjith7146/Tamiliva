//
//  OliData.swift
//  Tamiliva
//
//  Created by sanjithsethu on 19/1/22.
//

import Foundation

struct OliVerupadu: Identifiable,Equatable,Codable{
    var id = UUID()
    var tamil1: String
    var english1: String
    var tamil2: String
    var english2: String
    var tamil3: String
    var english3: String
    var fav: String
    var sn: Int
}
