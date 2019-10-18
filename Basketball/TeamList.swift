//
//  TeamList.swift
//  Basketball
//
//  Created by User02 on 2019/10/17.
//  Copyright © 2019 User02. All rights reserved.
//

import SwiftUI

struct TeamList: View {
    var body: some View {
    
       
        List() {//list
            background(Color.red)
            ForEach(1..<6) { (index) in
                HStack {
                    ForEach(1..<3) { (index1) in
                        Image("Team"+String(index)+String(index1))
                        
                            .resizable()
                            .frame( width:200 ,height:200 )
                            .scaledToFit()
                            .cornerRadius(50)
                            .shadow(radius:50)
                           
                    }
                }
            }
        
        
        }
    }
}

struct TeamList_Previews: PreviewProvider {
    static var previews: some View {
        TeamList()
    }
}

