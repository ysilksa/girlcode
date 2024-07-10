//
//  MessageBubble.swift
//  Chat
//
//  Created by 17 GO Participant on 7/8/24.
//

import SwiftUI

struct MessageBubble: View {
    var message : Message
    @State private var showTime = false
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing) {
            HStack{
                Text(message.text)
                    .padding()
                    .background(message.received ? Color("Gray") : Color("Purple"))
                    .cornerRadius(30)
            }
            .frame(maxWidth: 375, alignment: message.received ? .leading  : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            if showTime{
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(message.received ? .leading : .trailing, 25)
            }
        }
    }
}

#Preview {
    MessageBubble(message: Message(id: "12345", text: " Today is Tuesday, with a nice weather. I think.", received: true, timestamp: Date()))
}
