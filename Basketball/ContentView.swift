
//
//  ContentView.swift
//  Basketball
//
//  Created by User02 on 2019/10/17.
//  Copyright © 2019 User02. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            TeamList()
                .tabItem{
                    Image(systemName: "music.house.fill")
                    Text("Teams")
            }
            
            About()
                .tabItem{
                    Image(systemName: "info.circle.fill")
                    Text("About")
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
