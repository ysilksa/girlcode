//
//  Chat.swift
//  girlcode
//
//  Created by 3 GO Participant on 6/29/24.
// This swift file holds the page for the chat, where users can send messages with different tags to specify their messages' purpose. 
//

import SwiftUI

struct Chat: View {
    @StateObject var messagesManager = MessagesManager()
    var body: some View {
        VStack {
            VStack {
               TileRow()
                    ScrollViewReader { proxy in
                    ScrollView{
                        ForEach(messagesManager.messages, id: \.id){message in
                            MessageBubble(message: message)
                        }
                    }
                    .padding(.top, 10)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                    .onChange(of: messagesManager.lastMessageId) { id in
                      withAnimation {
                          proxy.scrollTo(id, anchor: .bottom)
                          }
                     }
                }
            }
            .background(Color("Gray"))
            
            MessageField()
                .environmentObject(MessagesManager())
        }
    }
}

#Preview {
    Chat()
}
