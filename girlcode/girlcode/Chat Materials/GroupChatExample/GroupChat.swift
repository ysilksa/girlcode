//
//  GroupChat.swift
//  girlcode
//
//  Created by 17 GO Participant on 7/21/24.
//

import SwiftUI

struct GroupChat: View {
    let users: [User] = [
        User(name: "Alice", profileImage: "person", message: "Does anyone know about the crash across the street?", messageType: .received),
        User(name: "Chisa", profileImage: "person", message: "I saw the pin on the map, it was a hit and run. They didn't catch the drive", messageType: .sent),
         User(name: "Barbara", profileImage: "person", message: "That's not good. I need to get to the orange line soon but I don't feel safe.", messageType: .received),
        User(name: "Tai", profileImage: "person", message: "I'm also walking to the train in a few. Need a walking buddy?", messageType: .received),
        User(name: "Barbara", profileImage: "person", message: "Yes! I need a walking buddy", messageType: .received),
        User(name: "Tai", profileImage: "person", message: "Cool! Meet you at 7/11 at the corner in 5 minutes", messageType: .received),
        User(name: "Chisa", profileImage: "person", message: "I'll join in for extra safety!", messageType: .sent),



        // Add more users as needed
    ]
    
    var body: some View {
        VStack {
            VStack {
                // Title row
                HStack(spacing: 20){
                    VStack(alignment: .leading, spacing: 5){
                        Text("West Loop")
                            .font(.title).bold()
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.gray)
                    .padding(10)
                  //  .background(Color.white)
                    .cornerRadius(10)
                    .padding(.leading, 10)
                }
                .padding(10)
            }
            .background(Color("Gray"))
            
            ScrollView{
                VStack(spacing: 10){
                    ForEach(users){ user in
                        UserView(user: user)
                    }
                }
               // .padding(.horizontal)
                .padding(.vertical, 10)
                
            }
            
            }
        MessageField()
        }
    }

#Preview {
    GroupChat()
}

