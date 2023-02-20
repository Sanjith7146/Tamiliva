//
//  TamilivaApp.swift
//  Tamiliva
//
//  Created by sanjithsethu on 17/1/22.
//

import SwiftUI

@main
struct TamilivaApp: App {
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color(red: 0.06274509803921569, green: 0.47058823529411764, blue: 0.8470588235294118))]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color(red: 0.06274509803921569, green: 0.47058823529411764, blue: 0.8470588235294118))]
        UITableView.appearance().backgroundColor = .white
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        
    }
}
