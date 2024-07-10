//
//  TileRow.swift
//  Chat
//
//  Created by 17 GO Participant on 7/8/24.
//

import SwiftUI

struct TileRow: View {
    var name = "Barbara Wilson"
    var body: some View {
        HStack(spacing: 20){
            Image("profilepic")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .cornerRadius(25)
            
            VStack(alignment: .leading, spacing: 5){
                Text(name)
                    .font(.title).bold()
                
                Text("online")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
            .padding(.leading, 10)
        }
        .padding(10)
    }
}


#Preview {
    TileRow()
        .background(Color("Gray"))
}
