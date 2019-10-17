//
//  TeamDetail.swift
//  Basketball
//
//  Created by User02 on 2019/10/17.
//  Copyright © 2019 User02. All rights reserved.
//

import SwiftUI

struct TeamDetail: View {
    
    var team:Player
    var body: some View
    {
        
        ZStack {
            Color.blue
            
            VStack
                {
                    
                    Text(team.name).bold()
                    Text("HeadCoach").bold()
                    Image(team.image+"Coach").resizable()
                        .frame(width: 200 , height: 200)
                        .scaledToFit()
                        
                    
                    Text("Players").bold()
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            
                            ForEach(1..<9) { (index) in
                                Image(self.team.image+String(index))
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 300,height:300)
                                    .clipped()
                            }
                        }
                        
                    }
                    
                    
            }
        }
    }
}
struct TeamDetail_Previews: PreviewProvider {
    static var previews: some View {
    TeamDetail(team:players[2])
    }
}
