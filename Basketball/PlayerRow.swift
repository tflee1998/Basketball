//
//  PlayerRow.swift
//  Basketball
//
//  Created by User02 on 2019/10/17.
//  Copyright © 2019 User02. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    
       var player: Player
           
           var body: some View {
               HStack {
                   Image(player.image)
                       .resizable()
                       .scaledToFill()
                       .frame(width: 80, height: 80)
                       .clipped()
                   VStack(alignment: .leading) {
                       Text(player.name)
                       Text(player.state)
                   }
                   Spacer()
                   
            }
           }
    
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: players[1])
    }
}
