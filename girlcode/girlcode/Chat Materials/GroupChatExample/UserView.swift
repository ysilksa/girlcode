//
//  UserView.swift
//  girlcode
//
//  Created by 17 GO Participant on 7/21/24.
//

import Foundation
import SwiftUI
struct UserView: View {
    let user: User
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            // Profile circle with class letter
            if user.messageType == .received {
                ZStack {
                    Circle()
                        .fill(Color.blue) // Change color based on class
                        .frame(width: 40, height: 40)
                    
                    Text(user.name.prefix(1))
                        .foregroundColor(.white)
                        .font(.headline)
                }
            }
            // Message bubble
            VStack(alignment: .leading, spacing: 5) {
                if user.messageType == .received {
                    Text(user.message)
                        .padding(10)
                        .background(Color("Gray"))
                        .cornerRadius(10)
                } else {
                    Text(user.message)
                        .padding(10)
                        .background(Color("Purple"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .frame(maxWidth: .infinity, alignment: user.messageType == .received ? .leading : .trailing)
            if user.messageType == .sent {
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}
