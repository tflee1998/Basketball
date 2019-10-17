
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
        NavigationView {
                   List(0..<players.count) { (index)  in
                    NavigationLink(destination:TeamDetail(team:players[index])) {
                           PlayerRow(player : players[index])
                           
                       }
                       
                   }
                   .navigationBarTitle("All Teams")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
