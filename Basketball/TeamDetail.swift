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
            LinearGradient(gradient: Gradient(colors: [Color.blue,Color.yellow,Color.red]), startPoint: UnitPoint(x:0,y:0), endPoint: UnitPoint(x:1,y:1))
            
            VStack
                {
                    
                    Text(team.name).bold().padding()
                    Text("HeadCoach").bold().padding()
                    Image(team.image+"Coach").resizable()
                        .frame(width: 200 , height: 200)
                        .scaledToFit()
                        .cornerRadius(50)
                        
                    
                    Text("Players").bold().padding()
                    ScrollView(.horizontal) {
                        HStack(spacing: 20) {
                            
                            ForEach(1..<9) { (index) in
                                Image(self.team.image+String(index))
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 300,height:300)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.yellow ,lineWidth:4))
                                    .shadow(radius: 40)
                                
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
