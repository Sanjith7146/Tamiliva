//
//  Oli verupadu.swift
//  Tamiliva
//
//  Created by sanjithsethu on 19/1/22.
//

import SwiftUI

@available(iOS 16.0, *)
struct OliVerupaduView: View {
    
    @Binding var oli : [OliVerupadu]
    
    func Init() { UITableView.appearance().backgroundColor = .clear }
    
    var notOliFav1: [OliVerupadu] {
        return oli.filter { $0.fav.contains("♡") }
    }
    var oliFav1: [OliVerupadu] {
        return oli.filter { $0.fav.contains("♥︎") }
    }
    
    var filteredFavOli: [OliVerupadu] {
        return(oliFav1.filter({
            searchText.isEmpty ? true :
            $0.tamil1.contains(searchText.lowercased()) ||
            $0.tamil2.contains(searchText.lowercased()) ||
            $0.tamil3.contains(searchText.lowercased()) ||
            $0.english1.contains(searchText.lowercased()) ||
            $0.english2.contains(searchText.lowercased()) ||
            $0.english3.contains(searchText.lowercased())
        }))
    }
    
    var filteredOli: [OliVerupadu] {
        return(notOliFav1.filter({
            searchText.isEmpty ? true :
            $0.tamil1.contains(searchText.lowercased()) ||
            $0.tamil2.contains(searchText.lowercased()) ||
            $0.tamil3.contains(searchText.lowercased()) ||
            $0.english1.contains(searchText.lowercased()) ||
            $0.english2.contains(searchText.lowercased()) ||
            $0.english3.contains(searchText.lowercased())
        }))
    }
    @State private var searchText = ""
    @State var selectedOli: OliVerupadu? = nil
    
    @State var awesome: String = "♥︎"
    @State var awesome1: String = "♥︎"
    @State var indexOfOli: Int
    
    @available(iOS 16.0, *)
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationView {
                VStack(alignment: .leading) {
                    SearchBar(text: $searchText)
                        .padding(.top, 8)
                        .padding(.bottom, 5)
                        .padding([.leading, .trailing])
                        .hidden()
                    
                    
                    List{
                        Section(header: Text("Favourites")){
                            ForEach(filteredFavOli) { oli2 in
                                NavigationLink(destination: OliCompareView(oli: $oli, singleOli: self.getIndexOf(oli2), tamil10: oli2.tamil1, tamil20: oli2.tamil2, tamil30: oli2.tamil3, english10: oli2.english1, english20: oli2.english2, english30: oli2.english3)){
                                    
                                    if oli2.tamil3 != "-"{
                                        
                                            
                                        HStack{
                                            Text("\(oli2.tamil1) / \(oli2.tamil2) / \(oli2.tamil3)")
                                                .font(.system(size: 16))
                                                .foregroundColor(Color(red:0.0, green: 0.0, blue: 0.0))
                                                .fontWeight(.thin)
                                            
                                            
                                            Spacer()
                                            Button {
                                                withAnimation{
                                                    for (index, i) in oli.enumerated() {
                                                        if oli2.id == i.id {
                                                            self.oli[index].fav = "♡"
                                                            print(oli[index].fav)
                                                            indexOfOli = self.oli[index].sn
                                                            print(indexOfOli)
                                                        }
                                                    }
                                                }
                                            } label: {
                                                Text("♥︎")
                                                    .foregroundColor(.red)
                                                    .font(.system(size: 30))
                                            }
                                            Text("")
                                        }
                                    
                                    }

                                    if oli2.tamil3 == "-"{
                                        
                                        HStack{
                                            
                                            Text("\(oli2.tamil1) / \(oli2.tamil2)")
                                                .font(.system(size: 16))
                                                .foregroundColor(Color(red:0.0, green: 0.0, blue: 0.0))
                                                .fontWeight(.thin)
                                            Spacer()
                                            Button {
                                                withAnimation{
                                                    for (index, i) in oli.enumerated() {
                                                        if oli2.id == i.id {
                                                            self.oli[index].fav = "♡"
                                                            print(oli[index].fav)
                                                            indexOfOli = self.oli[index].sn
                                                            print(indexOfOli)
                                                        }
                                                    }
                                                }
                                            } label: {
                                                Text("♥︎")
                                                    .foregroundColor(.red)
                                                    .font(.system(size: 30))
                                            }
                                            Text("")
                                        }
                                        
                                    }
                                }
                                
                            }
                            .listRowBackground(Color(hue: 0.581, saturation: 0.059, brightness: 1))
                        }
                        .font(.system(size: 20))
                        .foregroundColor(Color(red: 25/255, green: 66/255, blue: 126/255))
                        .fontWeight(.semibold)
                        .textCase(nil)
                        
                        Section(header: Text("All")){
                            ForEach(filteredOli) { oli1 in
                                NavigationLink(destination: OliCompareView(oli: $oli, singleOli: self.getIndexOf(oli1), tamil10: oli1.tamil1, tamil20: oli1.tamil2, tamil30: oli1.tamil3, english10: oli1.english1, english20: oli1.english2, english30: oli1.english3)){
                                    if oli1.tamil3 != "-"{
                                        
                                        HStack{
                                            Text("\(oli1.tamil1) / \(oli1.tamil2) / \(oli1.tamil3)")
                                                .font(.system(size: 16))
                                                .foregroundColor(Color(red:0.0, green: 0.0, blue: 0.0))
                                                .fontWeight(.thin)
                                            Spacer()
                                            Button {
                                                print("working")
                                                withAnimation{
                                                    for (index, i) in oli.enumerated() {
                                                        if oli1.id == i.id {
                                                            self.oli[index].fav = "♥︎"
                                                            print(oli[index].fav)
                                                        }
                                                    }
                                                }
                                                print(oliFav1)
                                            }label: {
                                                Text("♡")
                                                    .foregroundColor(.black)
                                                    .font(.system(size: 30))
                                            }
                                            Text("")
                                        }
                                    }else if oli1.tamil3 == "-"{
                                        
                                        HStack{
                                            Text("\(oli1.tamil1) / \(oli1.tamil2)")
                                                .font(.system(size: 16))
                                                .foregroundColor(Color(red:0.0, green: 0.0, blue: 0.0))
                                                .fontWeight(.thin)
                                            Spacer()
                                            Button {
                                                print("working")
                                                withAnimation{
                                                    for (index, i) in oli.enumerated() {
                                                        if oli1.id == i.id {
                                                            self.oli[index].fav = "♥︎"
                                                            print(oli[index].fav)
                                                        }
                                                    }
                                                }
                                            } label: {
                                                Text("♡")
                                                    .foregroundColor(.black)
                                                    .font(.system(size: 30))
                                            }
                                            Text("")
                                        }
                                    }
                                }
                            }
                            .listRowBackground(Color(hue: 0.581, saturation: 0.059, brightness: 1))
                        }
                        .font(.system(size: 20))
                        .foregroundColor(Color(red: 25/255, green: 66/255, blue: 126/255))
                        .fontWeight(.semibold)
                        .textCase(nil)
                    }
                    
                    .buttonStyle(.plain)
                    .navigationBarTitle(Text("Oli Verupadu"))
                    .background(.clear)
                    .scrollContentBackground(.hidden)
                }.onAppear{
                    print(notOliFav1)
                    print(oliFav1)
                    
                }
            }
            .navigationViewStyle(DefaultNavigationViewStyle())
        } else {
            NavigationView {
                VStack(alignment: .leading) {
                    SearchBar(text: $searchText)
                        .padding(.top, 8)
                        .padding(.bottom, 5)
                        .padding([.leading, .trailing])
                        .hidden()
                    
                    
                    List{
                        Section(header: Text("Favourites")){
                            ForEach(filteredFavOli) { oli2 in
                                NavigationLink(destination: OliCompareView(oli: $oli, singleOli: self.getIndexOf(oli2), tamil10: oli2.tamil1, tamil20: oli2.tamil2, tamil30: oli2.tamil3, english10: oli2.english1, english20: oli2.english2, english30: oli2.english3)){
                                    
                                    if oli2.tamil3 != "-"{
                                        HStack{
                                            Text("\(oli2.tamil1) / \(oli2.tamil2) / \(oli2.tamil3)")
                                                .font(.system(size: 16))
                                                .foregroundColor(Color(red:0.0, green: 0.0, blue: 0.0))
                                                .fontWeight(.thin)
                                            Spacer()
                                            Button {
                                                withAnimation{
                                                    for (index, i) in oli.enumerated() {
                                                        if oli2.id == i.id {
                                                            self.oli[index].fav = "♡"
                                                            print(oli[index].fav)
                                                            indexOfOli = self.oli[index].sn
                                                            print(indexOfOli)
                                                        }
                                                    }
                                                }
                                            } label: {
                                                Text("♥︎")
                                                    .foregroundColor(.red)
                                                    .font(.system(size: 30))
                                            }
                                            Text("")
                                        }
                                    }
                                    if oli2.tamil3 == "-"{
                                        
                                        HStack{
                                            
                                            Text("\(oli2.tamil1) / \(oli2.tamil2)")
                                                .font(.system(size: 16))
                                                .foregroundColor(Color(red:0.0, green: 0.0, blue: 0.0))
                                                .fontWeight(.thin)
                                            Spacer()
                                            Button {
                                                withAnimation{
                                                    for (index, i) in oli.enumerated() {
                                                        if oli2.id == i.id {
                                                            self.oli[index].fav = "♡"
                                                            print(oli[index].fav)
                                                            indexOfOli = self.oli[index].sn
                                                            print(indexOfOli)
                                                        }
                                                    }
                                                }
                                            } label: {
                                                Text("♥︎")
                                                    .foregroundColor(.red)
                                                    .font(.system(size: 30))
                                            }
                                            Text("")
                                        }
                                        
                                    }
                                }
                            }
                            .listRowBackground(Color(hue: 0.581, saturation: 0.059, brightness: 1))
                        }
                        .font(.system(size: 20))
                        .foregroundColor(Color(red: 25/255, green: 66/255, blue: 126/255))
                        .fontWeight(.semibold)
                        .textCase(nil)
                        
                        Section(header: Text("All")){
                            ForEach(filteredOli) { oli1 in
                                NavigationLink(destination: OliCompareView(oli: $oli, singleOli: self.getIndexOf(oli1), tamil10: oli1.tamil1, tamil20: oli1.tamil2, tamil30: oli1.tamil3, english10: oli1.english1, english20: oli1.english2, english30: oli1.english3)){
                                    if oli1.tamil3 != "-"{
                                        
                                        HStack{
                                            Text("\(oli1.tamil1) / \(oli1.tamil2) / \(oli1.tamil3)")
                                                .font(.system(size: 16))
                                                .foregroundColor(Color(red:0.0, green: 0.0, blue: 0.0))
                                                .fontWeight(.thin)
                                            Spacer()
                                            Button {
                                                print("working")
                                                withAnimation{
                                                    for (index, i) in oli.enumerated() {
                                                        if oli1.id == i.id {
                                                            self.oli[index].fav = "♥︎"
                                                            print(oli[index].fav)
                                                        }
                                                    }
                                                }
                                                print(oliFav1)
                                            }label: {
                                                Text("♡")
                                                    .foregroundColor(.black)
                                                    .font(.system(size: 30))
                                            }
                                            Text("")
                                        }
                                    }else if oli1.tamil3 == "-"{
                                        
                                        HStack{
                                            Text("\(oli1.tamil1) / \(oli1.tamil2)")
                                                .font(.system(size: 16))
                                                .foregroundColor(Color(red:0.0, green: 0.0, blue: 0.0))
                                                .fontWeight(.thin)
                                                
                                                
                                            Spacer()
                                            Button {
                                                print("working")
                                                withAnimation{
                                                    for (index, i) in oli.enumerated() {
                                                        if oli1.id == i.id {
                                                            self.oli[index].fav = "♥︎"
                                                            print(oli[index].fav)
                                                        }
                                                    }
                                                }
                                            } label: {
                                                Text("♡")
                                                    .foregroundColor(.black)
                                                    .font(.system(size: 30))
                                                    .fontWeight(.ultraLight)
                                            }
                                            Text("")
                                        }
                                        
                                    }
                                    
                                }
                                .frame(height:100000000)
                            }
                            .listRowBackground(Color(hue: 0.581, saturation: 0.059, brightness: 1))
                            
                        }
                        .font(.system(size: 20))
                        .foregroundColor(Color(red: 25/255, green: 66/255, blue: 126/255))
                        .fontWeight(.semibold)
                        .textCase(nil)
                    }
                        
                    .buttonStyle(.plain)
                    .navigationBarTitle(Text("Oli Verupadu"))
                    .background(.clear)
                    .scrollContentBackground(.hidden)
                    
                }.onAppear{
                    print(notOliFav1)
                    print(oliFav1)
                    
                }
            }
            .navigationViewStyle(DefaultNavigationViewStyle())
        }
        
        
        
        
        
    }
    
    func getIndexOf(_ oli2: OliVerupadu) -> Int {
        if let ndx = oli.firstIndex(of: oli2) {
            return Int(ndx)
        } else {
            return -1
        }
    }
    
    
}

struct OliVerupaduView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 16.0, *) {
            OliVerupaduView(oli: .constant([OliVerupadu(tamil1: "அலரி", english1: "plant", tamil2: "அலறி", english2: "cry", tamil3: "-", english3: "-", fav: "♥︎", sn: 0), OliVerupadu(tamil1: "அரிய", english1: "rare", tamil2: "அறிய", english2: "to know", tamil3: "-", english3: "-", fav: "♥︎", sn: 1), OliVerupadu(tamil1: "அவள்", english1: "she", tamil2: "அவல்", english2: "rice flake", tamil3: "-", english3: "-", fav: "♡", sn: 2), OliVerupadu(tamil1: "அழகு", english1: "beauty", tamil2: "அலகு", english2: "beak", tamil3: "-", english3: "-", fav: "♡", sn: 3), OliVerupadu(tamil1: "அலை", english1: "wave", tamil2: "அழை", english2: "invite", tamil3: "-", english3: "-", fav: "♡", sn: 4), OliVerupadu(tamil1: "அறிவாள்", english1: "she knows", tamil2: "அரிவாள்", english2: "sickle", tamil3: "-", english3: "-", fav: "♡", sn: 5), OliVerupadu(tamil1: "அறை", english1: "grind, room, slap", tamil2: "அரை ", english2: "half", tamil3: "-", english3: "-", fav: "♡", sn: 6), OliVerupadu(tamil1: "அன்னம் ", english1: "swan, food", tamil2: "அண்ணம்", english2: "palate", tamil3: "-", english3: "-", fav: "♡", sn: 7), OliVerupadu(tamil1: "அறம்", english1: "Morally right things", tamil2: "அரம்", english2: "file", tamil3: "-", english3: "-", fav: "♡", sn: 8), OliVerupadu(tamil1: "அள்ளி", english1: "scoop", tamil2: "அல்லி", english2: "Lilly", tamil3: "-", english3: "-", fav: "♡", sn: 9), OliVerupadu(tamil1: "அளி", english1: "give", tamil2: "அழி", english2: "erase, destroy", tamil3: "-", english3: "-", fav: "♡", sn: 10), OliVerupadu(tamil1: "அக்கறை", english1: "concern", tamil2: "அக்கரை", english2: "riverbank", tamil3: "-", english3: "-", fav: "♡", sn: 11), OliVerupadu(tamil1: "அனைத்து", english1: "all", tamil2: "அணைத்து", english2: "hug", tamil3: "-", english3: "-", fav: "♡", sn: 12), OliVerupadu(tamil1: "அருந்து", english1: "drink", tamil2: "அறுந்து", english2: "break", tamil3: "-", english3: "-", fav: "♥︎", sn: 13), OliVerupadu(tamil1: "ஆள்", english1: "man", tamil2: "ஆழ்", english2: "deep", tamil3: "ஆல்", english3: "banyan", fav: "♡", sn: 14), OliVerupadu(tamil1: "ஆணி", english1: "nail", tamil2: "ஆனி", english2: "Tamil month", tamil3: "-", english3: "-", fav: "♡", sn: 15), OliVerupadu(tamil1: "இறை", english1: "prayer", tamil2: "இரை", english2: "prey", tamil3: "-", english3: "-", fav: "♡", sn: 16), OliVerupadu(tamil1: "இரந்து", english1: "beg", tamil2: "இறந்து", english2: "dead", tamil3: "-", english3: "-", fav: "♡", sn: 17), OliVerupadu(tamil1: "இலை", english1: "leaf", tamil2: "இளை", english2: "lose weight", tamil3: "-", english3: "-", fav: "♡", sn: 18), OliVerupadu(tamil1: "இரங்கு", english1: "pity", tamil2: "இறங்கு", english2: "alight", tamil3: "-", english3: "-", fav: "♡", sn: 19), OliVerupadu(tamil1: "உன்", english1: "your", tamil2: "உண்", english2: "eat", tamil3: "-", english3: "-", fav: "♡", sn: 20), OliVerupadu(tamil1: "உரம்", english1: "fertiliser", tamil2: "உறம்", english2: "strong", tamil3: "-", english3: "-", fav: "♡", sn: 21), OliVerupadu(tamil1: "உறை", english1: "Envelope", tamil2: "உரை", english2: "speech", tamil3: "-", english3: "-", fav: "♡", sn: 22), OliVerupadu(tamil1: "உரி", english1: "strip off", tamil2: "உறி", english2: "sling, suck", tamil3: "-", english3: "-", fav: "♡", sn: 23), OliVerupadu(tamil1: "உலவு", english1: "Browse", tamil2: "உளவு", english2: "spy", tamil3: "உழவு", english3: "harvest", fav: "♡", sn: 24), OliVerupadu(tamil1: "ஊன்", english1: "meat", tamil2: "ஊண்", english2: "food", tamil3: "-", english3: "-", fav: "♥︎", sn: 25), OliVerupadu(tamil1: "என்ன", english1: "what", tamil2: "எண்ண", english2: "count, thought", tamil3: "-", english3: "-", fav: "♡", sn: 26), OliVerupadu(tamil1: "எரி", english1: "burn", tamil2: "எறி", english2: "throw", tamil3: "-", english3: "-", fav: "♡", sn: 27), OliVerupadu(tamil1: "எண்பது", english1: "eighty", tamil2: "என்பது", english2: "means", tamil3: "-", english3: "-", fav: "♡", sn: 28), OliVerupadu(tamil1: "எழும்பு", english1: "spring, rise", tamil2: "எலும்பு", english2: "bone", tamil3: "-", english3: "-", fav: "♡", sn: 29), OliVerupadu(tamil1: "ஏரி", english1: "lake", tamil2: "ஏறி", english2: "climb", tamil3: "-", english3: "-", fav: "♡", sn: 30), OliVerupadu(tamil1: "ஒழி", english1: "destroy", tamil2: "ஒளி", english2: "light", tamil3: "ஒலி", english3: "sound", fav: "♡", sn: 31), OliVerupadu(tamil1: "கள்", english1: "toddy (alcohol drink )", tamil2: "கல்", english2: "stone", tamil3: "-", english3: "-", fav: "♡", sn: 32), OliVerupadu(tamil1: "கறி", english1: "curry", tamil2: "கரி", english2: "charcoal", tamil3: "-", english3: "-", fav: "♡", sn: 33), OliVerupadu(tamil1: "கழகம்", english1: "association", tamil2: "கலகம்", english2: "riot", tamil3: "-", english3: "-", fav: "♡", sn: 34), OliVerupadu(tamil1: "கனி", english1: "fruit", tamil2: "கணி", english2: "calculate", tamil3: "-", english3: "-", fav: "♡", sn: 35), OliVerupadu(tamil1: "கன்னி", english1: "Virgo", tamil2: "கண்ணி", english2: "trap", tamil3: "-", english3: "-", fav: "♡", sn: 36), OliVerupadu(tamil1: "கழி", english1: "pole", tamil2: "களி", english2: "rejoice", tamil3: "-", english3: "-", fav: "♡", sn: 37), OliVerupadu(tamil1: "கறுத்து", english1: "black", tamil2: "கருத்து", english2: "opinion, point", tamil3: "-", english3: "-", fav: "♡", sn: 38), OliVerupadu(tamil1: "கணம்", english1: "moment", tamil2: "கனம்", english2: "weight", tamil3: "-", english3: "-", fav: "♡", sn: 39), OliVerupadu(tamil1: "கறை", english1: "stain", tamil2: "கரை", english2: "bank", tamil3: "-", english3: "-", fav: "♡", sn: 40), OliVerupadu(tamil1: "கணை", english1: "arrow", tamil2: "கனை", english2: "roar", tamil3: "-", english3: "-", fav: "♡", sn: 41), OliVerupadu(tamil1: "களை", english1: "weed", tamil2: "கலை", english2: "art", tamil3: "-", english3: "-", fav: "♡", sn: 42), OliVerupadu(tamil1: "களைத்தல்", english1: "tired", tamil2: "கலைத்தல்", english2: "disband", tamil3: "-", english3: "-", fav: "♡", sn: 43), OliVerupadu(tamil1: "காலை", english1: "morning", tamil2: "காளை", english2: "bull", tamil3: "-", english3: "-", fav: "♡", sn: 44), OliVerupadu(tamil1: "கிளி", english1: "parrot", tamil2: "கிலி", english2: "fear", tamil3: "கிழி", english3: "tear", fav: "♡", sn: 45), OliVerupadu(tamil1: "கிளவி", english1: "word", tamil2: "கிழவி", english2: "old woman", tamil3: "-", english3: "-", fav: "♡", sn: 46), OliVerupadu(tamil1: "கீரி", english1: "mongoose", tamil2: "கீறி", english2: "scratch", tamil3: "-", english3: "-", fav: "♡", sn: 47), OliVerupadu(tamil1: "குளம்", english1: "pond", tamil2: "குலம்", english2: "race", tamil3: "-", english3: "-", fav: "♡", sn: 48), OliVerupadu(tamil1: "குரல்", english1: "tone", tamil2: "குறள்", english2: "Thirukkral", tamil3: "-", english3: "-", fav: "♡", sn: 49), OliVerupadu(tamil1: "குளவி", english1: "wasp", tamil2: "குழவி", english2: "infant", tamil3: "-", english3: "-", fav: "♡", sn: 50), OliVerupadu(tamil1: "குழம்பு", english1: "curry", tamil2: "குளம்பு", english2: "hoof of an animal", tamil3: "-", english3: "-", fav: "♡", sn: 51), OliVerupadu(tamil1: "குழி", english1: "pit", tamil2: "குளி", english2: "bathe", tamil3: "-", english3: "-", fav: "♡", sn: 52), OliVerupadu(tamil1: "குழை", english1: "mash", tamil2: "குலை", english2: "disband, bunch", tamil3: "-", english3: "-", fav: "♡", sn: 53), OliVerupadu(tamil1: "குறை", english1: "decrease,reduce,shortcoming", tamil2: "குரை", english2: "bark", tamil3: "-", english3: "-", fav: "♡", sn: 54), OliVerupadu(tamil1: "கூரை", english1: "ceiling", tamil2: "கூறை", english2: "clothes", tamil3: "-", english3: "-", fav: "♡", sn: 55), OliVerupadu(tamil1: "கூரிய", english1: "sharp", tamil2: "கூறிய", english2: "told", tamil3: "-", english3: "-", fav: "♥︎", sn: 56), OliVerupadu(tamil1: "கொல்லும்", english1: "fatal", tamil2: "கொள்ளும்", english2: "adapt", tamil3: "-", english3: "-", fav: "♡", sn: 57), OliVerupadu(tamil1: "கொல்லை", english1: "backyard", tamil2: "கொள்ளை", english2: "robbery", tamil3: "-", english3: "-", fav: "♡", sn: 58), OliVerupadu(tamil1: "கோல்", english1: "rod", tamil2: "கோள்", english2: "planet", tamil3: "-", english3: "-", fav: "♡", sn: 59), OliVerupadu(tamil1: "கோலம்", english1: "decoration", tamil2: "கோளம்", english2: "sphere", tamil3: "-", english3: "-", fav: "♡", sn: 60), OliVerupadu(tamil1: "கோலி", english1: "marble", tamil2: "கோழி", english2: "chicken", tamil3: "-", english3: "-", fav: "♡", sn: 61), OliVerupadu(tamil1: "சளி", english1: "cold", tamil2: "சலி", english2: "dejected", tamil3: "-", english3: "-", fav: "♡", sn: 62), OliVerupadu(tamil1: "சிரை", english1: "vein", tamil2: "சிறை", english2: "jail", tamil3: "-", english3: "-", fav: "♡", sn: 63), OliVerupadu(tamil1: "சொறி", english1: "scratch", tamil2: "சொரி", english2: "pour", tamil3: "-", english3: "-", fav: "♡", sn: 64), OliVerupadu(tamil1: "சோளம்", english1: "millet", tamil2: "சோழம்", english2: "ancient kingdom, the Chola kingdom", tamil3: "-", english3: "-", fav: "♡", sn: 65), OliVerupadu(tamil1: "தண்மை", english1: "kindness", tamil2: "தன்மை", english2: "quality", tamil3: "-", english3: "-", fav: "♡", sn: 66), OliVerupadu(tamil1: "தலை", english1: "head", tamil2: "தழை", english2: "sprout", tamil3: "-", english3: "-", fav: "♡", sn: 67), OliVerupadu(tamil1: "தனி", english1: "lonely", tamil2: "தணி", english2: "extinguise", tamil3: "-", english3: "-", fav: "♡", sn: 68), OliVerupadu(tamil1: "தரி", english1: "wear", tamil2: "தறி", english2: "cut off", tamil3: "-", english3: "-", fav: "♡", sn: 69), OliVerupadu(tamil1: "தாள்", english1: "paper", tamil2: "தாழ்", english2: "latch", tamil3: "-", english3: "-", fav: "♡", sn: 70), OliVerupadu(tamil1: "தாலி", english1: "mangal sutra", tamil2: "தாழி", english2: "big pot", tamil3: "-", english3: "-", fav: "♡", sn: 71), OliVerupadu(tamil1: "துறை", english1: "department", tamil2: "துரை", english2: "leader", tamil3: "-", english3: "-", fav: "♡", sn: 72), OliVerupadu(tamil1: "தோல்", english1: "skin", tamil2: "தோள்", english2: "shoulder", tamil3: "-", english3: "-", fav: "♡", sn: 73), OliVerupadu(tamil1: "திறை", english1: "tax", tamil2: "திரை", english2: "curtain", tamil3: "-", english3: "-", fav: "♡", sn: 74), OliVerupadu(tamil1: "நீளம்", english1: "length", tamil2: "நீலம்", english2: "blue", tamil3: "-", english3: "-", fav: "♡", sn: 75), OliVerupadu(tamil1: "பறி", english1: "pluck", tamil2: "பரி", english2: "horse", tamil3: "-", english3: "-", fav: "♡", sn: 76), OliVerupadu(tamil1: "பணி", english1: "job", tamil2: "பனி", english2: "dew", tamil3: "-", english3: "-", fav: "♡", sn: 77), OliVerupadu(tamil1: "பறந்த", english1: "fly", tamil2: "பரந்த", english2: "broad", tamil3: "-", english3: "-", fav: "♡", sn: 78), OliVerupadu(tamil1: "பள்ளி", english1: "school", tamil2: "பல்லி", english2: "lizard", tamil3: "-", english3: "-", fav: "♡", sn: 79), OliVerupadu(tamil1: "பழி", english1: "revenge", tamil2: "பலி", english2: "sacrifice", tamil3: "-", english3: "-", fav: "♥︎", sn: 80), OliVerupadu(tamil1: "பாலம்", english1: "bridge", tamil2: "பாளம்", english2: "flattened shape", tamil3: "-", english3: "-", fav: "♡", sn: 81), OliVerupadu(tamil1: "பால்", english1: "milk", tamil2: "பாழ்", english2: "ruin", tamil3: "-", english3: "-", fav: "♡", sn: 82), OliVerupadu(tamil1: "புலி", english1: "tiger", tamil2: "புளி", english2: "tamarind", tamil3: "-", english3: "-", fav: "♡", sn: 83), OliVerupadu(tamil1: "பினை", english1: "mix", tamil2: "பிணை", english2: "bail", tamil3: "-", english3: "-", fav: "♡", sn: 84), OliVerupadu(tamil1: "பெரும்", english1: "huge", tamil2: "பெறும்", english2: "receive", tamil3: "-", english3: "-", fav: "♡", sn: 85), OliVerupadu(tamil1: "போளி", english1: "dessert", tamil2: "போலி", english2: "duplicate", tamil3: "-", english3: "-", fav: "♡", sn: 86), OliVerupadu(tamil1: "பொரி", english1: "roast", tamil2: "பொறி", english2: "engrave, machine", tamil3: "-", english3: "-", fav: "♡", sn: 87), OliVerupadu(tamil1: "பேண்", english1: "sustain", tamil2: "பேன்", english2: "head lice", tamil3: "-", english3: "-", fav: "♡", sn: 88), OliVerupadu(tamil1: "மறித்து", english1: "block", tamil2: "மரித்து", english2: "dead", tamil3: "-", english3: "-", fav: "♡", sn: 89), OliVerupadu(tamil1: "மனை", english1: "home, land", tamil2: "மணை", english2: "wooden seat", tamil3: "-", english3: "-", fav: "♡", sn: 90), OliVerupadu(tamil1: "மலை", english1: "hill", tamil2: "மழை", english2: "rain", tamil3: "-", english3: "-", fav: "♡", sn: 91), OliVerupadu(tamil1: "மாரி", english1: "rain", tamil2: "மாறி", english2: "alternate, change", tamil3: "-", english3: "-", fav: "♡", sn: 92), OliVerupadu(tamil1: "மான்", english1: "deer", tamil2: "மாண்", english2: "pride", tamil3: "-", english3: "-", fav: "♡", sn: 93), OliVerupadu(tamil1: "முன்னால்", english1: "front", tamil2: "முன்னாள்", english2: "ex, ago", tamil3: "-", english3: "-", fav: "♡", sn: 94), OliVerupadu(tamil1: "மூலை", english1: "corner", tamil2: "மூளை", english2: "brain", tamil3: "-", english3: "-", fav: "♡", sn: 95), OliVerupadu(tamil1: "வழி", english1: "path", tamil2: "வலி", english2: "pain", tamil3: "-", english3: "-", fav: "♡", sn: 96), OliVerupadu(tamil1: "வழு", english1: "defect", tamil2: "வலு", english2: "strenth", tamil3: "-", english3: "-", fav: "♡", sn: 97), OliVerupadu(tamil1: "வலை", english1: "net", tamil2: "வளை", english2: "bend", tamil3: "-", english3: "-", fav: "♡", sn: 98), OliVerupadu(tamil1: "வாழை", english1: "banana", tamil2: "வாளை", english2: "fish", tamil3: "-", english3: "-", fav: "♥︎", sn: 99), OliVerupadu(tamil1: "வாள்", english1: "sword", tamil2: "வால்", english2: "tail", tamil3: "வாழ் ", english3: "live", fav: "♡", sn: 100), OliVerupadu(tamil1: "வாழி", english1: "prosper", tamil2: "வாளி", english2: "bucket", tamil3: "-", english3: "-", fav: "♡", sn: 101), OliVerupadu(tamil1: "வானம்", english1: "sky", tamil2: "வாணம்", english2: "rocket", tamil3: "-", english3: "-", fav: "♡", sn: 102), OliVerupadu(tamil1: "விளக்கு", english1: "lamp, explain", tamil2: "விலக்கு", english2: "exempt, avoid", tamil3: "-", english3: "-", fav: "♡", sn: 103), OliVerupadu(tamil1: "விளக்கினார்", english1: "explain", tamil2: "விலக்கினார்", english2: "withdraw, exclude", tamil3: "-", english3: "-", fav: "♡", sn: 104), OliVerupadu(tamil1: "விலா", english1: "ribs", tamil2: "விழா", english2: "festival", tamil3: "-", english3: "-", fav: "♡", sn: 105), OliVerupadu(tamil1: "விழை", english1: "desire", tamil2: "விளை", english2: "cultivate", tamil3: "விலை", english3: "price", fav: "♡", sn: 106), OliVerupadu(tamil1: "விளி", english1: "call", tamil2: "விழி", english2: "awake", tamil3: "-", english3: "-", fav: "♡", sn: 107), OliVerupadu(tamil1: "விளங்கு", english1: "hand cuff", tamil2: "விலங்கு", english2: "animal", tamil3: "-", english3: "-", fav: "♡", sn: 108), OliVerupadu(tamil1: "வெல்லம்", english1: "jaggery", tamil2: "வெள்ளம்", english2: "flood", tamil3: "-", english3: "-", fav: "♡", sn: 109), OliVerupadu(tamil1: "வேலை", english1: "job", tamil2: "வேளை", english2: "during, day", tamil3: "-", english3: "-", fav: "♡", sn: 110), OliVerupadu(tamil1: "களித்து", english1: "happy", tamil2: "கழித்து", english2: "excrete", tamil3: "-", english3: "-", fav: "♡", sn: 111), OliVerupadu(tamil1: "விழைவு", english1: "desire", tamil2: "விளைவு", english2: "effect", tamil3: "-", english3: "-", fav: "♡", sn: 112), OliVerupadu(tamil1: "அரி", english1: "cut", tamil2: "அறி", english2: "learn", tamil3: "-", english3: "-", fav: "♥︎", sn: 113), OliVerupadu(tamil1: "பரவை", english1: "exapnse, sea", tamil2: "பறவை", english2: "bird", tamil3: "-", english3: "-", fav: "♡", sn: 114), OliVerupadu(tamil1: "மரி", english1: "dead", tamil2: "மறி", english2: "block", tamil3: "-", english3: "-", fav: "♡", sn: 115), OliVerupadu(tamil1: "ஊர", english1: "crawl", tamil2: "ஊற", english2: "soak", tamil3: "-", english3: "-", fav: "♡", sn: 116), OliVerupadu(tamil1: "முறுக்கு", english1: "twist", tamil2: "முருக்கு", english2: "snack", tamil3: "-", english3: "-", fav: "♡", sn: 117), OliVerupadu(tamil1: "இரக்கம்", english1: "mercy", tamil2: "இறக்கம்", english2: "descent", tamil3: "-", english3: "-", fav: "♡", sn: 118), OliVerupadu(tamil1: "மரை", english1: "elk", tamil2: "மறை", english2: "conceal", tamil3: "-", english3: "-", fav: "♡", sn: 119)]), indexOfOli: 0)
        } else {
            OliVerupaduFor15View(oli: .constant([OliVerupadu(tamil1: "அலரி", english1: "plant", tamil2: "அலறி", english2: "cry", tamil3: "-", english3: "-", fav: "♥︎", sn: 0), OliVerupadu(tamil1: "அரிய", english1: "rare", tamil2: "அறிய", english2: "to know", tamil3: "-", english3: "-", fav: "♥︎", sn: 1), OliVerupadu(tamil1: "அவள்", english1: "she", tamil2: "அவல்", english2: "rice flake", tamil3: "-", english3: "-", fav: "♡", sn: 2), OliVerupadu(tamil1: "அழகு", english1: "beauty", tamil2: "அலகு", english2: "beak", tamil3: "-", english3: "-", fav: "♡", sn: 3), OliVerupadu(tamil1: "அலை", english1: "wave", tamil2: "அழை", english2: "invite", tamil3: "-", english3: "-", fav: "♡", sn: 4), OliVerupadu(tamil1: "அறிவாள்", english1: "she knows", tamil2: "அரிவாள்", english2: "sickle", tamil3: "-", english3: "-", fav: "♡", sn: 5), OliVerupadu(tamil1: "அறை", english1: "grind, room, slap", tamil2: "அரை ", english2: "half", tamil3: "-", english3: "-", fav: "♡", sn: 6), OliVerupadu(tamil1: "அன்னம் ", english1: "swan, food", tamil2: "அண்ணம்", english2: "palate", tamil3: "-", english3: "-", fav: "♡", sn: 7), OliVerupadu(tamil1: "அறம்", english1: "Morally right things", tamil2: "அரம்", english2: "file", tamil3: "-", english3: "-", fav: "♡", sn: 8), OliVerupadu(tamil1: "அள்ளி", english1: "scoop", tamil2: "அல்லி", english2: "Lilly", tamil3: "-", english3: "-", fav: "♡", sn: 9), OliVerupadu(tamil1: "அளி", english1: "give", tamil2: "அழி", english2: "erase, destroy", tamil3: "-", english3: "-", fav: "♡", sn: 10), OliVerupadu(tamil1: "அக்கறை", english1: "concern", tamil2: "அக்கரை", english2: "riverbank", tamil3: "-", english3: "-", fav: "♡", sn: 11), OliVerupadu(tamil1: "அனைத்து", english1: "all", tamil2: "அணைத்து", english2: "hug", tamil3: "-", english3: "-", fav: "♡", sn: 12), OliVerupadu(tamil1: "அருந்து", english1: "drink", tamil2: "அறுந்து", english2: "break", tamil3: "-", english3: "-", fav: "♥︎", sn: 13), OliVerupadu(tamil1: "ஆள்", english1: "man", tamil2: "ஆழ்", english2: "deep", tamil3: "ஆல்", english3: "banyan", fav: "♡", sn: 14), OliVerupadu(tamil1: "ஆணி", english1: "nail", tamil2: "ஆனி", english2: "Tamil month", tamil3: "-", english3: "-", fav: "♡", sn: 15), OliVerupadu(tamil1: "இறை", english1: "prayer", tamil2: "இரை", english2: "prey", tamil3: "-", english3: "-", fav: "♡", sn: 16), OliVerupadu(tamil1: "இரந்து", english1: "beg", tamil2: "இறந்து", english2: "dead", tamil3: "-", english3: "-", fav: "♡", sn: 17), OliVerupadu(tamil1: "இலை", english1: "leaf", tamil2: "இளை", english2: "lose weight", tamil3: "-", english3: "-", fav: "♡", sn: 18), OliVerupadu(tamil1: "இரங்கு", english1: "pity", tamil2: "இறங்கு", english2: "alight", tamil3: "-", english3: "-", fav: "♡", sn: 19), OliVerupadu(tamil1: "உன்", english1: "your", tamil2: "உண்", english2: "eat", tamil3: "-", english3: "-", fav: "♡", sn: 20), OliVerupadu(tamil1: "உரம்", english1: "fertiliser", tamil2: "உறம்", english2: "strong", tamil3: "-", english3: "-", fav: "♡", sn: 21), OliVerupadu(tamil1: "உறை", english1: "Envelope", tamil2: "உரை", english2: "speech", tamil3: "-", english3: "-", fav: "♡", sn: 22), OliVerupadu(tamil1: "உரி", english1: "strip off", tamil2: "உறி", english2: "sling, suck", tamil3: "-", english3: "-", fav: "♡", sn: 23), OliVerupadu(tamil1: "உலவு", english1: "Browse", tamil2: "உளவு", english2: "spy", tamil3: "உழவு", english3: "harvest", fav: "♡", sn: 24), OliVerupadu(tamil1: "ஊன்", english1: "meat", tamil2: "ஊண்", english2: "food", tamil3: "-", english3: "-", fav: "♥︎", sn: 25), OliVerupadu(tamil1: "என்ன", english1: "what", tamil2: "எண்ண", english2: "count, thought", tamil3: "-", english3: "-", fav: "♡", sn: 26), OliVerupadu(tamil1: "எரி", english1: "burn", tamil2: "எறி", english2: "throw", tamil3: "-", english3: "-", fav: "♡", sn: 27), OliVerupadu(tamil1: "எண்பது", english1: "eighty", tamil2: "என்பது", english2: "means", tamil3: "-", english3: "-", fav: "♡", sn: 28), OliVerupadu(tamil1: "எழும்பு", english1: "spring, rise", tamil2: "எலும்பு", english2: "bone", tamil3: "-", english3: "-", fav: "♡", sn: 29), OliVerupadu(tamil1: "ஏரி", english1: "lake", tamil2: "ஏறி", english2: "climb", tamil3: "-", english3: "-", fav: "♡", sn: 30), OliVerupadu(tamil1: "ஒழி", english1: "destroy", tamil2: "ஒளி", english2: "light", tamil3: "ஒலி", english3: "sound", fav: "♡", sn: 31), OliVerupadu(tamil1: "கள்", english1: "toddy (alcohol drink )", tamil2: "கல்", english2: "stone", tamil3: "-", english3: "-", fav: "♡", sn: 32), OliVerupadu(tamil1: "கறி", english1: "curry", tamil2: "கரி", english2: "charcoal", tamil3: "-", english3: "-", fav: "♡", sn: 33), OliVerupadu(tamil1: "கழகம்", english1: "association", tamil2: "கலகம்", english2: "riot", tamil3: "-", english3: "-", fav: "♡", sn: 34), OliVerupadu(tamil1: "கனி", english1: "fruit", tamil2: "கணி", english2: "calculate", tamil3: "-", english3: "-", fav: "♡", sn: 35), OliVerupadu(tamil1: "கன்னி", english1: "Virgo", tamil2: "கண்ணி", english2: "trap", tamil3: "-", english3: "-", fav: "♡", sn: 36), OliVerupadu(tamil1: "கழி", english1: "pole", tamil2: "களி", english2: "rejoice", tamil3: "-", english3: "-", fav: "♡", sn: 37), OliVerupadu(tamil1: "கறுத்து", english1: "black", tamil2: "கருத்து", english2: "opinion, point", tamil3: "-", english3: "-", fav: "♡", sn: 38), OliVerupadu(tamil1: "கணம்", english1: "moment", tamil2: "கனம்", english2: "weight", tamil3: "-", english3: "-", fav: "♡", sn: 39), OliVerupadu(tamil1: "கறை", english1: "stain", tamil2: "கரை", english2: "bank", tamil3: "-", english3: "-", fav: "♡", sn: 40), OliVerupadu(tamil1: "கணை", english1: "arrow", tamil2: "கனை", english2: "roar", tamil3: "-", english3: "-", fav: "♡", sn: 41), OliVerupadu(tamil1: "களை", english1: "weed", tamil2: "கலை", english2: "art", tamil3: "-", english3: "-", fav: "♡", sn: 42), OliVerupadu(tamil1: "களைத்தல்", english1: "tired", tamil2: "கலைத்தல்", english2: "disband", tamil3: "-", english3: "-", fav: "♡", sn: 43), OliVerupadu(tamil1: "காலை", english1: "morning", tamil2: "காளை", english2: "bull", tamil3: "-", english3: "-", fav: "♡", sn: 44), OliVerupadu(tamil1: "கிளி", english1: "parrot", tamil2: "கிலி", english2: "fear", tamil3: "கிழி", english3: "tear", fav: "♡", sn: 45), OliVerupadu(tamil1: "கிளவி", english1: "word", tamil2: "கிழவி", english2: "old woman", tamil3: "-", english3: "-", fav: "♡", sn: 46), OliVerupadu(tamil1: "கீரி", english1: "mongoose", tamil2: "கீறி", english2: "scratch", tamil3: "-", english3: "-", fav: "♡", sn: 47), OliVerupadu(tamil1: "குளம்", english1: "pond", tamil2: "குலம்", english2: "race", tamil3: "-", english3: "-", fav: "♡", sn: 48), OliVerupadu(tamil1: "குரல்", english1: "tone", tamil2: "குறள்", english2: "Thirukkral", tamil3: "-", english3: "-", fav: "♡", sn: 49), OliVerupadu(tamil1: "குளவி", english1: "wasp", tamil2: "குழவி", english2: "infant", tamil3: "-", english3: "-", fav: "♡", sn: 50), OliVerupadu(tamil1: "குழம்பு", english1: "curry", tamil2: "குளம்பு", english2: "hoof of an animal", tamil3: "-", english3: "-", fav: "♡", sn: 51), OliVerupadu(tamil1: "குழி", english1: "pit", tamil2: "குளி", english2: "bathe", tamil3: "-", english3: "-", fav: "♡", sn: 52), OliVerupadu(tamil1: "குழை", english1: "mash", tamil2: "குலை", english2: "disband, bunch", tamil3: "-", english3: "-", fav: "♡", sn: 53), OliVerupadu(tamil1: "குறை", english1: "decrease,reduce,shortcoming", tamil2: "குரை", english2: "bark", tamil3: "-", english3: "-", fav: "♡", sn: 54), OliVerupadu(tamil1: "கூரை", english1: "ceiling", tamil2: "கூறை", english2: "clothes", tamil3: "-", english3: "-", fav: "♡", sn: 55), OliVerupadu(tamil1: "கூரிய", english1: "sharp", tamil2: "கூறிய", english2: "told", tamil3: "-", english3: "-", fav: "♥︎", sn: 56), OliVerupadu(tamil1: "கொல்லும்", english1: "fatal", tamil2: "கொள்ளும்", english2: "adapt", tamil3: "-", english3: "-", fav: "♡", sn: 57), OliVerupadu(tamil1: "கொல்லை", english1: "backyard", tamil2: "கொள்ளை", english2: "robbery", tamil3: "-", english3: "-", fav: "♡", sn: 58), OliVerupadu(tamil1: "கோல்", english1: "rod", tamil2: "கோள்", english2: "planet", tamil3: "-", english3: "-", fav: "♡", sn: 59), OliVerupadu(tamil1: "கோலம்", english1: "decoration", tamil2: "கோளம்", english2: "sphere", tamil3: "-", english3: "-", fav: "♡", sn: 60), OliVerupadu(tamil1: "கோலி", english1: "marble", tamil2: "கோழி", english2: "chicken", tamil3: "-", english3: "-", fav: "♡", sn: 61), OliVerupadu(tamil1: "சளி", english1: "cold", tamil2: "சலி", english2: "dejected", tamil3: "-", english3: "-", fav: "♡", sn: 62), OliVerupadu(tamil1: "சிரை", english1: "vein", tamil2: "சிறை", english2: "jail", tamil3: "-", english3: "-", fav: "♡", sn: 63), OliVerupadu(tamil1: "சொறி", english1: "scratch", tamil2: "சொரி", english2: "pour", tamil3: "-", english3: "-", fav: "♡", sn: 64), OliVerupadu(tamil1: "சோளம்", english1: "millet", tamil2: "சோழம்", english2: "ancient kingdom, the Chola kingdom", tamil3: "-", english3: "-", fav: "♡", sn: 65), OliVerupadu(tamil1: "தண்மை", english1: "kindness", tamil2: "தன்மை", english2: "quality", tamil3: "-", english3: "-", fav: "♡", sn: 66), OliVerupadu(tamil1: "தலை", english1: "head", tamil2: "தழை", english2: "sprout", tamil3: "-", english3: "-", fav: "♡", sn: 67), OliVerupadu(tamil1: "தனி", english1: "lonely", tamil2: "தணி", english2: "extinguise", tamil3: "-", english3: "-", fav: "♡", sn: 68), OliVerupadu(tamil1: "தரி", english1: "wear", tamil2: "தறி", english2: "cut off", tamil3: "-", english3: "-", fav: "♡", sn: 69), OliVerupadu(tamil1: "தாள்", english1: "paper", tamil2: "தாழ்", english2: "latch", tamil3: "-", english3: "-", fav: "♡", sn: 70), OliVerupadu(tamil1: "தாலி", english1: "mangal sutra", tamil2: "தாழி", english2: "big pot", tamil3: "-", english3: "-", fav: "♡", sn: 71), OliVerupadu(tamil1: "துறை", english1: "department", tamil2: "துரை", english2: "leader", tamil3: "-", english3: "-", fav: "♡", sn: 72), OliVerupadu(tamil1: "தோல்", english1: "skin", tamil2: "தோள்", english2: "shoulder", tamil3: "-", english3: "-", fav: "♡", sn: 73), OliVerupadu(tamil1: "திறை", english1: "tax", tamil2: "திரை", english2: "curtain", tamil3: "-", english3: "-", fav: "♡", sn: 74), OliVerupadu(tamil1: "நீளம்", english1: "length", tamil2: "நீலம்", english2: "blue", tamil3: "-", english3: "-", fav: "♡", sn: 75), OliVerupadu(tamil1: "பறி", english1: "pluck", tamil2: "பரி", english2: "horse", tamil3: "-", english3: "-", fav: "♡", sn: 76), OliVerupadu(tamil1: "பணி", english1: "job", tamil2: "பனி", english2: "dew", tamil3: "-", english3: "-", fav: "♡", sn: 77), OliVerupadu(tamil1: "பறந்த", english1: "fly", tamil2: "பரந்த", english2: "broad", tamil3: "-", english3: "-", fav: "♡", sn: 78), OliVerupadu(tamil1: "பள்ளி", english1: "school", tamil2: "பல்லி", english2: "lizard", tamil3: "-", english3: "-", fav: "♡", sn: 79), OliVerupadu(tamil1: "பழி", english1: "revenge", tamil2: "பலி", english2: "sacrifice", tamil3: "-", english3: "-", fav: "♥︎", sn: 80), OliVerupadu(tamil1: "பாலம்", english1: "bridge", tamil2: "பாளம்", english2: "flattened shape", tamil3: "-", english3: "-", fav: "♡", sn: 81), OliVerupadu(tamil1: "பால்", english1: "milk", tamil2: "பாழ்", english2: "ruin", tamil3: "-", english3: "-", fav: "♡", sn: 82), OliVerupadu(tamil1: "புலி", english1: "tiger", tamil2: "புளி", english2: "tamarind", tamil3: "-", english3: "-", fav: "♡", sn: 83), OliVerupadu(tamil1: "பினை", english1: "mix", tamil2: "பிணை", english2: "bail", tamil3: "-", english3: "-", fav: "♡", sn: 84), OliVerupadu(tamil1: "பெரும்", english1: "huge", tamil2: "பெறும்", english2: "receive", tamil3: "-", english3: "-", fav: "♡", sn: 85), OliVerupadu(tamil1: "போளி", english1: "dessert", tamil2: "போலி", english2: "duplicate", tamil3: "-", english3: "-", fav: "♡", sn: 86), OliVerupadu(tamil1: "பொரி", english1: "roast", tamil2: "பொறி", english2: "engrave, machine", tamil3: "-", english3: "-", fav: "♡", sn: 87), OliVerupadu(tamil1: "பேண்", english1: "sustain", tamil2: "பேன்", english2: "head lice", tamil3: "-", english3: "-", fav: "♡", sn: 88), OliVerupadu(tamil1: "மறித்து", english1: "block", tamil2: "மரித்து", english2: "dead", tamil3: "-", english3: "-", fav: "♡", sn: 89), OliVerupadu(tamil1: "மனை", english1: "home, land", tamil2: "மணை", english2: "wooden seat", tamil3: "-", english3: "-", fav: "♡", sn: 90), OliVerupadu(tamil1: "மலை", english1: "hill", tamil2: "மழை", english2: "rain", tamil3: "-", english3: "-", fav: "♡", sn: 91), OliVerupadu(tamil1: "மாரி", english1: "rain", tamil2: "மாறி", english2: "alternate, change", tamil3: "-", english3: "-", fav: "♡", sn: 92), OliVerupadu(tamil1: "மான்", english1: "deer", tamil2: "மாண்", english2: "pride", tamil3: "-", english3: "-", fav: "♡", sn: 93), OliVerupadu(tamil1: "முன்னால்", english1: "front", tamil2: "முன்னாள்", english2: "ex, ago", tamil3: "-", english3: "-", fav: "♡", sn: 94), OliVerupadu(tamil1: "மூலை", english1: "corner", tamil2: "மூளை", english2: "brain", tamil3: "-", english3: "-", fav: "♡", sn: 95), OliVerupadu(tamil1: "வழி", english1: "path", tamil2: "வலி", english2: "pain", tamil3: "-", english3: "-", fav: "♡", sn: 96), OliVerupadu(tamil1: "வழு", english1: "defect", tamil2: "வலு", english2: "strenth", tamil3: "-", english3: "-", fav: "♡", sn: 97), OliVerupadu(tamil1: "வலை", english1: "net", tamil2: "வளை", english2: "bend", tamil3: "-", english3: "-", fav: "♡", sn: 98), OliVerupadu(tamil1: "வாழை", english1: "banana", tamil2: "வாளை", english2: "fish", tamil3: "-", english3: "-", fav: "♥︎", sn: 99), OliVerupadu(tamil1: "வாள்", english1: "sword", tamil2: "வால்", english2: "tail", tamil3: "வாழ் ", english3: "live", fav: "♡", sn: 100), OliVerupadu(tamil1: "வாழி", english1: "prosper", tamil2: "வாளி", english2: "bucket", tamil3: "-", english3: "-", fav: "♡", sn: 101), OliVerupadu(tamil1: "வானம்", english1: "sky", tamil2: "வாணம்", english2: "rocket", tamil3: "-", english3: "-", fav: "♡", sn: 102), OliVerupadu(tamil1: "விளக்கு", english1: "lamp, explain", tamil2: "விலக்கு", english2: "exempt, avoid", tamil3: "-", english3: "-", fav: "♡", sn: 103), OliVerupadu(tamil1: "விளக்கினார்", english1: "explain", tamil2: "விலக்கினார்", english2: "withdraw, exclude", tamil3: "-", english3: "-", fav: "♡", sn: 104), OliVerupadu(tamil1: "விலா", english1: "ribs", tamil2: "விழா", english2: "festival", tamil3: "-", english3: "-", fav: "♡", sn: 105), OliVerupadu(tamil1: "விழை", english1: "desire", tamil2: "விளை", english2: "cultivate", tamil3: "விலை", english3: "price", fav: "♡", sn: 106), OliVerupadu(tamil1: "விளி", english1: "call", tamil2: "விழி", english2: "awake", tamil3: "-", english3: "-", fav: "♡", sn: 107), OliVerupadu(tamil1: "விளங்கு", english1: "hand cuff", tamil2: "விலங்கு", english2: "animal", tamil3: "-", english3: "-", fav: "♡", sn: 108), OliVerupadu(tamil1: "வெல்லம்", english1: "jaggery", tamil2: "வெள்ளம்", english2: "flood", tamil3: "-", english3: "-", fav: "♡", sn: 109), OliVerupadu(tamil1: "வேலை", english1: "job", tamil2: "வேளை", english2: "during, day", tamil3: "-", english3: "-", fav: "♡", sn: 110), OliVerupadu(tamil1: "களித்து", english1: "happy", tamil2: "கழித்து", english2: "excrete", tamil3: "-", english3: "-", fav: "♡", sn: 111), OliVerupadu(tamil1: "விழைவு", english1: "desire", tamil2: "விளைவு", english2: "effect", tamil3: "-", english3: "-", fav: "♡", sn: 112), OliVerupadu(tamil1: "அரி", english1: "cut", tamil2: "அறி", english2: "learn", tamil3: "-", english3: "-", fav: "♥︎", sn: 113), OliVerupadu(tamil1: "பரவை", english1: "exapnse, sea", tamil2: "பறவை", english2: "bird", tamil3: "-", english3: "-", fav: "♡", sn: 114), OliVerupadu(tamil1: "மரி", english1: "dead", tamil2: "மறி", english2: "block", tamil3: "-", english3: "-", fav: "♡", sn: 115), OliVerupadu(tamil1: "ஊர", english1: "crawl", tamil2: "ஊற", english2: "soak", tamil3: "-", english3: "-", fav: "♡", sn: 116), OliVerupadu(tamil1: "முறுக்கு", english1: "twist", tamil2: "முருக்கு", english2: "snack", tamil3: "-", english3: "-", fav: "♡", sn: 117), OliVerupadu(tamil1: "இரக்கம்", english1: "mercy", tamil2: "இறக்கம்", english2: "descent", tamil3: "-", english3: "-", fav: "♡", sn: 118), OliVerupadu(tamil1: "மரை", english1: "elk", tamil2: "மறை", english2: "conceal", tamil3: "-", english3: "-", fav: "♡", sn: 119)]), indexOfOli: 0)
        }
    }
}

