//
//  Chat.swift
//  girlcode
//
//  Created by 3 GO Participant on 6/29/24.
// This swift file holds the page for the chat, where users can send messages with different tags to specify their messages' purpose. 
//

import SwiftUI

struct Chat: View {
    var body: some View {
        ZStack {
            // background gradient color
            backgroundGradient
            
            // white background for tabview
            whiteTabView
                .frame(width: 430.0, height: 116.0)
                .foregroundColor(.white)
                .position(CGPoint(x: 195, y: 800))
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    Chat()
}
