//
//  HomePage.swift
//  girlcode
//
//  Created by 3 GO Participant on 6/29/24.
//  This Swift file holds the homepage. 
//

import SwiftUI

let backgroundGradient = LinearGradient(gradient: Gradient(colors: [Color(hex: 16749721), Color(hex: 16756353)]), startPoint: .top, endPoint: .bottom)

let whiteTabView = RoundedRectangle(cornerRadius: 40)

struct HomePage: View {
    
    @State var counter = 0
    
    var body: some View {
        ZStack {
            // background gradient color
            backgroundGradient
            
            // white background for tabview
            whiteTabView
                .frame(width: 430.0, height: 116.0)
                .foregroundColor(.white)
                .position(CGPoint(x: 195, y: 800))
            
            VStack {
                Image(systemName: "bolt.slash.fill")
                Image(systemName: "folder.fill.badge.person.crop")
                Button("press me") {
                    counter += 1
                }
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
        }
        
            
        }
        .symbolEffect(.bounce, value: counter)
        
            .ignoresSafeArea()
        
        
    }
}

#Preview {
    HomePage()
}
