//
//  About.swift
//  Basketball
//
//  Created by User20 on 2019/10/18.
//  Copyright © 2019 User02. All rights reserved.
//

import SwiftUI

struct About: View {
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

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}
