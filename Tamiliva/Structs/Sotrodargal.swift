//
//  SotrodargalData.swift
//  Tamiliva
//
//  Created by sanjithsethu on 20/1/22.
//

import Foundation

struct Sotratargal: Hashable{
    var id = UUID()
    var phrase: String
    var meaning: String
}

struct section:Hashable{
    var id = UUID()
    var value:Int
    var name:String
    var img:String
}
