//
//  OliCompareView.swift
//  Tamiliva
//
//  Created by sanjithsethu on 23/1/22.
//

import SwiftUI



struct OliCompareView: View {
    
    @Binding var oli: [OliVerupadu]
    @State var singleOli: Int
    var tamil10: String
    var tamil20: String
    var tamil30: String
    var english10: String
    var english20: String
    var english30: String
    var title1 = ""
    
    
    var body: some View {
        if tamil30 != "-" {
            VStack{
                Text("")
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(maxWidth: .infinity, minHeight: 100, maxHeight: 250)
                        .foregroundColor(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                    
                    Text("\(tamil10)   →   \(english10)")
                        .font(.system(size: 30))
                    
                }.padding()
                
                Spacer()
                
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(maxWidth: .infinity, minHeight: 100, maxHeight: 250)
                        .foregroundColor(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                    
                    Text("\(tamil20)   →   \(english20)")
                        .font(.system(size: 30))
                    
                }.padding()
                
                Spacer()
                
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(maxWidth: .infinity, minHeight: 100, maxHeight: 250)
                        .foregroundColor(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                    
                    Text("\(tamil30)   →   \(english30)")
                        .font(.system(size: 30))
                    
                }.padding()
                
                Spacer()
                Text("")
            }
            .navigationBarTitle(Text("\(tamil10) / \(tamil20) / \(tamil30)"))
            
        } else if tamil30 == "-" {
            
            VStack{
                Text("")
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(maxWidth: .infinity, minHeight: 100, maxHeight: 250)
                        .foregroundColor(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                    
                    Text("\(tamil10)   →   \(english10)")
                        .font(.system(size: 30))
                    
                }.padding()
                
                Spacer()
                
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .frame(maxWidth: .infinity, minHeight: 100, maxHeight: 250)
                        .foregroundColor(Color(red: 0.8470588235294118, green: 0.9254901960784314, blue: 1.0))
                    
                    Text("\(tamil20)   →   \(english20)")
                        .font(.system(size: 30))
                    
                }.padding()
                
                Spacer()
                Text("")
            }.navigationBarTitle(Text("\(tamil10) / \(tamil20)"))
        }
        
    }
    
    struct OliCompareView_Previews: PreviewProvider {
        static var previews: some View {
            OliCompareView(oli: .constant([OliVerupadu(tamil1: "", english1: "", tamil2: "", english2: "", tamil3: "", english3: "", fav: "", sn: 0)]), singleOli: -1, tamil10: "", tamil20: "", tamil30: "", english10: "", english20: "", english30: "")
        }
    }
}
