//
//  letters.swift
//  Tamiliva
//
//  Created by sanjithsethu on 19/1/22.
//

import SwiftUI
import AVFoundation

var letters = [letterWithSound(letter: "அ", sound: "0", section: "அ"), letterWithSound(letter: "ஆ", sound: "1", section: "அ"), letterWithSound(letter: "இ", sound: "2", section: "அ"), letterWithSound(letter: "ஈ", sound: "3", section: "அ"), letterWithSound(letter: "உ", sound: "4", section: "அ"), letterWithSound(letter: "ஊ", sound: "5", section: "அ"), letterWithSound(letter: "எ", sound: "6", section: "அ"), letterWithSound(letter: "ஏ", sound: "7", section: "அ"), letterWithSound(letter: "ஐ", sound: "8", section: "அ"), letterWithSound(letter: "ஒ", sound: "9", section: "அ"), letterWithSound(letter: "ஓ", sound: "10", section: "அ"), letterWithSound(letter: "ஔ", sound: "11", section: "அ"), letterWithSound(letter: "க", sound: "12", section: "க"), letterWithSound(letter: "கா", sound: "13", section: "க"), letterWithSound(letter: "கி", sound: "14", section: "க"), letterWithSound(letter: "கீ", sound: "15", section: "க"), letterWithSound(letter: "கு", sound: "16", section: "க"), letterWithSound(letter: "கூ", sound: "17", section: "க"), letterWithSound(letter: "கெ", sound: "18", section: "க"), letterWithSound(letter: "கே", sound: "19", section: "க"), letterWithSound(letter: "கை", sound: "20", section: "க"), letterWithSound(letter: "கொ", sound: "21", section: "க"), letterWithSound(letter: "கோ", sound: "22", section: "க"), letterWithSound(letter: "கௌ", sound: "23", section: "க"), letterWithSound(letter: "க்", sound: "24", section: "க"), letterWithSound(letter: "ங", sound: "25", section: "ங"), letterWithSound(letter: "ஙா", sound: "26", section: "ங"), letterWithSound(letter: "ஙி", sound: "27", section: "ங"), letterWithSound(letter: "ஙீ", sound: "28", section: "ங"), letterWithSound(letter: "ஙு", sound: "29", section: "ங"), letterWithSound(letter: "ஙூ", sound: "30", section: "ங"), letterWithSound(letter: "ஙெ", sound: "31", section: "ங"), letterWithSound(letter: "ஙே", sound: "32", section: "ங"), letterWithSound(letter: "ஙை", sound: "33", section: "ங"), letterWithSound(letter: "ஙொ", sound: "34", section: "ங"), letterWithSound(letter: "ஙோ", sound: "35", section: "ங"), letterWithSound(letter: "ஙௌ", sound: "36", section: "ங"), letterWithSound(letter: "ங்", sound: "37", section: "ங"), letterWithSound(letter: "ச", sound: "38", section: "ச"), letterWithSound(letter: "சா", sound: "39", section: "ச"), letterWithSound(letter: "சி", sound: "40", section: "ச"), letterWithSound(letter: "சீ", sound: "41", section: "ச"), letterWithSound(letter: "சு", sound: "42", section: "ச"), letterWithSound(letter: "சூ", sound: "43", section: "ச"), letterWithSound(letter: "செ", sound: "44", section: "ச"), letterWithSound(letter: "சே", sound: "45", section: "ச"), letterWithSound(letter: "சை", sound: "46", section: "ச"), letterWithSound(letter: "சொ", sound: "47", section: "ச"), letterWithSound(letter: "சோ", sound: "48", section: "ச"), letterWithSound(letter: "சௌ", sound: "49", section: "ச"), letterWithSound(letter: "ச்", sound: "50", section: "ச"), letterWithSound(letter: "ஞ", sound: "51", section: "ஞ"), letterWithSound(letter: "ஞா", sound: "52", section: "ஞ"), letterWithSound(letter: "ஞி", sound: "53", section: "ஞ"), letterWithSound(letter: "ஞீ", sound: "54", section: "ஞ"), letterWithSound(letter: "ஞு", sound: "55", section: "ஞ"), letterWithSound(letter: "ஞூ", sound: "56", section: "ஞ"), letterWithSound(letter: "ஞெ", sound: "57", section: "ஞ"), letterWithSound(letter: "ஞே", sound: "58", section: "ஞ"), letterWithSound(letter: "ஞை", sound: "59", section: "ஞ"), letterWithSound(letter: "ஞொ", sound: "60", section: "ஞ"), letterWithSound(letter: "ஞோ", sound: "61", section: "ஞ"), letterWithSound(letter: "ஞௌ", sound: "62", section: "ஞ"), letterWithSound(letter: "ஞ்", sound: "63", section: "ஞ"), letterWithSound(letter: "ட", sound: "64", section: "ட"), letterWithSound(letter: "டா", sound: "65", section: "ட"), letterWithSound(letter: "டி", sound: "66", section: "ட"), letterWithSound(letter: "டீ", sound: "67", section: "ட"), letterWithSound(letter: "டு", sound: "68", section: "ட"), letterWithSound(letter: "டூ", sound: "69", section: "ட"), letterWithSound(letter: "டெ", sound: "70", section: "ட"), letterWithSound(letter: "டே", sound: "71", section: "ட"), letterWithSound(letter: "டை", sound: "72", section: "ட"), letterWithSound(letter: "டொ", sound: "73", section: "ட"), letterWithSound(letter: "டோ", sound: "74", section: "ட"), letterWithSound(letter: "டௌ", sound: "75", section: "ட"), letterWithSound(letter: "ட்", sound: "76", section: "ட"), letterWithSound(letter: "ண", sound: "77", section: "ண"), letterWithSound(letter: "ணா", sound: "78", section: "ண"), letterWithSound(letter: "ணி", sound: "79", section: "ண"), letterWithSound(letter: "ணீ", sound: "80", section: "ண"), letterWithSound(letter: "ணு", sound: "81", section: "ண"), letterWithSound(letter: "ணூ", sound: "82", section: "ண"), letterWithSound(letter: "ணெ", sound: "83", section: "ண"), letterWithSound(letter: "ணே", sound: "84", section: "ண"), letterWithSound(letter: "ணை", sound: "85", section: "ண"), letterWithSound(letter: "ணொ", sound: "86", section: "ண"), letterWithSound(letter: "ணோ", sound: "87", section: "ண"), letterWithSound(letter: "ணௌ", sound: "88", section: "ண"), letterWithSound(letter: "ண்", sound: "89", section: "ண"), letterWithSound(letter: "த", sound: "90", section: "த"), letterWithSound(letter: "தா", sound: "91", section: "த"), letterWithSound(letter: "தி", sound: "92", section: "த"), letterWithSound(letter: "தீ", sound: "93", section: "த"), letterWithSound(letter: "து", sound: "94", section: "த"), letterWithSound(letter: "தூ", sound: "95", section: "த"), letterWithSound(letter: "தெ", sound: "96", section: "த"), letterWithSound(letter: "தே", sound: "97", section: "த"), letterWithSound(letter: "தை", sound: "98", section: "த"), letterWithSound(letter: "தொ", sound: "99", section: "த"), letterWithSound(letter: "தோ", sound: "100", section: "த"), letterWithSound(letter: "தௌ", sound: "101", section: "த"), letterWithSound(letter: "த்", sound: "102", section: "த"), letterWithSound(letter: "ந", sound: "103", section: "ந"), letterWithSound(letter: "நா", sound: "104", section: "ந"), letterWithSound(letter: "நி", sound: "105", section: "ந"), letterWithSound(letter: "நீ", sound: "106", section: "ந"), letterWithSound(letter: "நு", sound: "107", section: "ந"), letterWithSound(letter: "நூ", sound: "108", section: "ந"), letterWithSound(letter: "நெ", sound: "109", section: "ந"), letterWithSound(letter: "நே", sound: "110", section: "ந"), letterWithSound(letter: "நை", sound: "111", section: "ந"), letterWithSound(letter: "நொ", sound: "112", section: "ந"), letterWithSound(letter: "நோ", sound: "113", section: "ந"), letterWithSound(letter: "நௌ", sound: "114", section: "ந"), letterWithSound(letter: "ந்", sound: "115", section: "ந"), letterWithSound(letter: "ப", sound: "116", section: "ப"), letterWithSound(letter: "பா", sound: "117", section: "ப"), letterWithSound(letter: "பி", sound: "118", section: "ப"), letterWithSound(letter: "பீ", sound: "119", section: "ப"), letterWithSound(letter: "பு", sound: "120", section: "ப"), letterWithSound(letter: "பூ", sound: "121", section: "ப"), letterWithSound(letter: "பெ", sound: "122", section: "ப"), letterWithSound(letter: "பே", sound: "123", section: "ப"), letterWithSound(letter: "பை", sound: "124", section: "ப"), letterWithSound(letter: "பொ", sound: "125", section: "ப"), letterWithSound(letter: "போ", sound: "126", section: "ப"), letterWithSound(letter: "பௌ", sound: "127", section: "ப"), letterWithSound(letter: "ப்", sound: "128", section: "ப"), letterWithSound(letter: "ம", sound: "129", section: "ம"), letterWithSound(letter: "மா", sound: "130", section: "ம"), letterWithSound(letter: "மி", sound: "131", section: "ம"), letterWithSound(letter: "மீ", sound: "132", section: "ம"), letterWithSound(letter: "மு", sound: "133", section: "ம"), letterWithSound(letter: "மூ", sound: "134", section: "ம"), letterWithSound(letter: "மெ", sound: "135", section: "ம"), letterWithSound(letter: "மே", sound: "136", section: "ம"), letterWithSound(letter: "மை", sound: "137", section: "ம"), letterWithSound(letter: "மொ", sound: "138", section: "ம"), letterWithSound(letter: "மோ", sound: "139", section: "ம"), letterWithSound(letter: "மௌ", sound: "140", section: "ம"), letterWithSound(letter: "ம்", sound: "141", section: "ம"), letterWithSound(letter: "ய", sound: "142", section: "ய"), letterWithSound(letter: "யா", sound: "143", section: "ய"), letterWithSound(letter: "யி", sound: "144", section: "ய"), letterWithSound(letter: "யீ", sound: "145", section: "ய"), letterWithSound(letter: "யு", sound: "146", section: "ய"), letterWithSound(letter: "யூ", sound: "147", section: "ய"), letterWithSound(letter: "யெ", sound: "148", section: "ய"), letterWithSound(letter: "யே", sound: "149", section: "ய"), letterWithSound(letter: "யை", sound: "150", section: "ய"), letterWithSound(letter: "யொ", sound: "151", section: "ய"), letterWithSound(letter: "யோ", sound: "152", section: "ய"), letterWithSound(letter: "யௌ", sound: "153", section: "ய"), letterWithSound(letter: "ய்", sound: "154", section: "ய"), letterWithSound(letter: "ர", sound: "155", section: "ர"), letterWithSound(letter: "ரா", sound: "156", section: "ர"), letterWithSound(letter: "ரி", sound: "157", section: "ர"), letterWithSound(letter: "ரீ", sound: "158", section: "ர"), letterWithSound(letter: "ரு", sound: "159", section: "ர"), letterWithSound(letter: "ரூ", sound: "160", section: "ர"), letterWithSound(letter: "ரெ", sound: "161", section: "ர"), letterWithSound(letter: "ரே", sound: "162", section: "ர"), letterWithSound(letter: "ரை", sound: "163", section: "ர"), letterWithSound(letter: "ரொ", sound: "164", section: "ர"), letterWithSound(letter: "ரோ", sound: "165", section: "ர"), letterWithSound(letter: "ரௌ", sound: "166", section: "ர"), letterWithSound(letter: "ர்", sound: "167", section: "ர"), letterWithSound(letter: "ல", sound: "168", section: "ல"), letterWithSound(letter: "லா", sound: "169", section: "ல"), letterWithSound(letter: "லி", sound: "170", section: "ல"), letterWithSound(letter: "லீ", sound: "171", section: "ல"), letterWithSound(letter: "லு", sound: "172", section: "ல"), letterWithSound(letter: "லூ", sound: "173", section: "ல"), letterWithSound(letter: "லெ", sound: "174", section: "ல"), letterWithSound(letter: "லே", sound: "175", section: "ல"), letterWithSound(letter: "லை", sound: "176", section: "ல"), letterWithSound(letter: "லொ", sound: "177", section: "ல"), letterWithSound(letter: "லோ", sound: "178", section: "ல"), letterWithSound(letter: "லௌ", sound: "179", section: "ல"), letterWithSound(letter: "ல்", sound: "180", section: "ல"), letterWithSound(letter: "வ", sound: "181", section: "வ"), letterWithSound(letter: "வா", sound: "182", section: "வ"), letterWithSound(letter: "வி", sound: "183", section: "வ"), letterWithSound(letter: "வீ", sound: "184", section: "வ"), letterWithSound(letter: "வு", sound: "185", section: "வ"), letterWithSound(letter: "வூ", sound: "186", section: "வ"), letterWithSound(letter: "வெ", sound: "187", section: "வ"), letterWithSound(letter: "வே", sound: "188", section: "வ"), letterWithSound(letter: "வை", sound: "189", section: "வ"), letterWithSound(letter: "வொ", sound: "190", section: "வ"), letterWithSound(letter: "வோ", sound: "191", section: "வ"), letterWithSound(letter: "வௌ", sound: "192", section: "வ"), letterWithSound(letter: "வ்", sound: "193", section: "வ"), letterWithSound(letter: "ழ", sound: "194", section: "ழ"), letterWithSound(letter: "ழா", sound: "195", section: "ழ"), letterWithSound(letter: "ழி", sound: "196", section: "ழ"), letterWithSound(letter: "ழீ", sound: "197", section: "ழ"), letterWithSound(letter: "ழு", sound: "198", section: "ழ"), letterWithSound(letter: "ழூ", sound: "199", section: "ழ"), letterWithSound(letter: "ழெ", sound: "200", section: "ழ"), letterWithSound(letter: "ழே", sound: "201", section: "ழ"), letterWithSound(letter: "ழை", sound: "202", section: "ழ"), letterWithSound(letter: "ழொ", sound: "203", section: "ழ"), letterWithSound(letter: "ழோ", sound: "204", section: "ழ"), letterWithSound(letter: "ழௌ", sound: "205", section: "ழ"), letterWithSound(letter: "ழ்", sound: "206", section: "ழ"), letterWithSound(letter: "ள", sound: "207", section: "ள"), letterWithSound(letter: "ளா", sound: "208", section: "ள"), letterWithSound(letter: "ளி", sound: "209", section: "ள"), letterWithSound(letter: "ளீ", sound: "210", section: "ள"), letterWithSound(letter: "ளு", sound: "211", section: "ள"), letterWithSound(letter: "ளூ", sound: "212", section: "ள"), letterWithSound(letter: "ளெ", sound: "213", section: "ள"), letterWithSound(letter: "ளே", sound: "214", section: "ள"), letterWithSound(letter: "ளை", sound: "215", section: "ள"), letterWithSound(letter: "ளொ", sound: "216", section: "ள"), letterWithSound(letter: "ளோ", sound: "217", section: "ள"), letterWithSound(letter: "ளௌ", sound: "218", section: "ள"), letterWithSound(letter: "ள்", sound: "219", section: "ள"), letterWithSound(letter: "ற", sound: "220", section: "ற"), letterWithSound(letter: "றா", sound: "221", section: "ற"), letterWithSound(letter: "றி", sound: "222", section: "ற"), letterWithSound(letter: "றீ", sound: "223", section: "ற"), letterWithSound(letter: "று", sound: "224", section: "ற"), letterWithSound(letter: "றூ", sound: "225", section: "ற"), letterWithSound(letter: "றெ", sound: "226", section: "ற"), letterWithSound(letter: "றே", sound: "227", section: "ற"), letterWithSound(letter: "றை", sound: "228", section: "ற"), letterWithSound(letter: "றொ", sound: "229", section: "ற"), letterWithSound(letter: "றோ", sound: "230", section: "ற"), letterWithSound(letter: "றௌ", sound: "231", section: "ற"), letterWithSound(letter: "ற்", sound: "232", section: "ற"), letterWithSound(letter: "ன", sound: "233", section: "ன"), letterWithSound(letter: "னா", sound: "234", section: "ன"), letterWithSound(letter: "னி", sound: "235", section: "ன"), letterWithSound(letter: "னீ", sound: "236", section: "ன"), letterWithSound(letter: "னு", sound: "237", section: "ன"), letterWithSound(letter: "னூ", sound: "238", section: "ன"), letterWithSound(letter: "னெ", sound: "239", section: "ன"), letterWithSound(letter: "னே", sound: "240", section: "ன"), letterWithSound(letter: "னை", sound: "241", section: "ன"), letterWithSound(letter: "னொ", sound: "242", section: "ன"), letterWithSound(letter: "னோ", sound: "243", section: "ன"), letterWithSound(letter: "னௌ", sound: "244", section: "ன"), letterWithSound(letter: "ன்", sound: "245", section: "ன")]
var player: AVAudioPlayer?
var section1: [letterWithSound] {
    return (letters.filter({$0.section.contains("அ")}))
}
var section2: [letterWithSound] {
    return (letters.filter({$0.section.contains("க")}))
}
var section3: [letterWithSound] {
    return (letters.filter({$0.section.contains("ங")}))
}
var section4: [letterWithSound] {
    return (letters.filter({$0.section.contains("ச")}))
}
var section5: [letterWithSound] {
    return (letters.filter({$0.section.contains("ஞ")}))
}
var section6: [letterWithSound] {
    return (letters.filter({$0.section.contains("ட")}))
}

var section7: [letterWithSound] {
    return (letters.filter({$0.section.contains("ண")}))
}

var section8: [letterWithSound] {
    return (letters.filter({$0.section.contains("த")}))
}

var section9: [letterWithSound] {
    return (letters.filter({$0.section.contains("ந")}))
}
var section10: [letterWithSound] {
    return (letters.filter({$0.section.contains("ப")}))
}
var section11: [letterWithSound] {
    return (letters.filter({$0.section.contains("ம")}))
}
var section12: [letterWithSound] {
    return (letters.filter({$0.section.contains("ய")}))
}
var section13: [letterWithSound] {
    return (letters.filter({$0.section.contains("ர")}))
}
var section14: [letterWithSound] {
    return (letters.filter({$0.section.contains("ல")}))
}
var section15: [letterWithSound] {
    return (letters.filter({$0.section.contains("வ")}))
}
var section16: [letterWithSound] {
    return (letters.filter({$0.section.contains("ழ")}))
}
var section17: [letterWithSound] {
    return (letters.filter({$0.section.contains("ள")}))
}
var section18: [letterWithSound] {
    return (letters.filter({$0.section.contains("ற")}))
}
var section19: [letterWithSound] {
    return (letters.filter({$0.section.contains("ன")}))
}


var columns: [GridItem] = [
    GridItem(.flexible()),
    GridItem(.flexible()),
    GridItem(.flexible()),
    GridItem(.flexible())
]

struct lettersView: View {
    
    var filteredLetters: [letterWithSound] {
        return(letters.filter({
            searchText.isEmpty ? true :
            $0.letter.contains(searchText.lowercased())
        }))
    }
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    Group {
                        Section(header: Text("உயிர் எழுத்துக்கள்")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    ForEach(section1) { sec1 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec1.sound)")
                                            print(sec1.letter)
                                        }
                                    label: {
                                        Text(sec1.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 23))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                    
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        Section(header: Text("க")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section2) { sec2 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec2.sound)")
                                            print(sec2.letter)
                                        }
                                    label: {
                                        Text(sec2.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 19))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                    
                                }
                                
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        
                        Section(header: Text("ங")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section3) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 19))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        Section(header: Text("ச")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section4) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 19))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        Section(header: Text("ஞ")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section5) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 19))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        Section(header: Text("ட")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section6) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 19))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        Section(header: Text("ண")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section7) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 15))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        Section(header: Text("த")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section8) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 19))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        Section(header: Text("ந")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section9) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 19))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        Section(header: Text("ப")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section10) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 19))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                    }
                    Group {
                        Section(header: Text("ம")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section11) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 19))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        Section(header: Text("ய")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section12) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 19))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        Section(header: Text("ர")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section13) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 19))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        Section(header: Text("ல")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section14) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 19))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        Section(header: Text("வ")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section15) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 19))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        Section(header: Text("ழ")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section16) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 19))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        Section(header: Text("ள")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section17) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 19))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        Section(header: Text("ற")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section18) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 19))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                        Section(header: Text("ன")
                            .fontWeight(.black)
                            .padding()){
                                LazyVGrid(columns: columns, spacing: 16) {
                                    
                                    ForEach(section19) { sec3 in
                                        Button {
                                            playSound(soundName: "tamil_\(sec3.sound)")
                                            print(sec3.letter)
                                        }
                                    label: {
                                        Text(sec3.letter)
                                            .fontWeight(.bold)
                                            .font(.system(size: 15))
                                            .padding()
                                            .frame(width: 75, height: 75, alignment: .center)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                                            .cornerRadius(20)
                                            .padding(.horizontal)
                                    }
                                    }
                                }
                            }
                            .foregroundColor(Color(hue: 0.6, saturation: 0.816, brightness: 0.5))
                        
                    }
                }
            }
            .navigationBarTitle("Letters")
            
        }
        .navigationViewStyle(.stack)
    }
}

func playSound(soundName: String) {
    if let asset = NSDataAsset(name:soundName){
        do {
            // Use NSDataAsset's data property to access the audio file stored in Sound.
            player = try AVAudioPlayer(data:asset.data, fileTypeHint:"m4a")
            // Play the above sound file.
            player?.play()
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
}

struct lettersView_Previews: PreviewProvider {
    static var previews: some View {
        lettersView()
    }
}



