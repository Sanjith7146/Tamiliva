//
//  Quiz.swift
//  Tamiliva
//
//  Created by Tanish Jayachandran on 15/3/22.
//

import Foundation
import SwiftUI

struct Qn: Identifiable, Hashable {
    var id = UUID()
    var query:String
    var Answer1: String
    var Answer2: String
    var Answer3:String
    var Wrong: Bool
//    var RiteAns:Int
//    var Wrong:Bool
}



