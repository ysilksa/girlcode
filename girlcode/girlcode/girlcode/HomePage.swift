//
//  HomePage.swift
//  girlcode
//
//  Created by 3 GO Participant on 6/29/24.
//  This Swift file holds the homepage. 
//

import SwiftUI

struct HomePage: View {
    
    @State var counter = 0
    
    var body: some View {
        ZStack {
            // background gradient color
            backgroundGradient
            
            // white background for tabview
            whiteTabView
                .frame(width: 400, height: 116.0)
                .foregroundColor(.white)
                .position(CGPoint(x: 196.5, y: 800))
            
            VStack {
                Text("Home Page")
                .foregroundColor(.white)
                }
            
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    HomePage()
}
