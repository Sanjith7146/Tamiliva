//
//  SearchBar.swift
//  Tamiliva
//
//  Created by sanjithsethu on 21/1/22.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    
    @State private var isEditing = false
    
    var body: some View {
        HStack {
//           Added a comment just to prevent HStack from crashing
        }
        .searchable(text: $text)
    }
}


struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}
