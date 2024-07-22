//
//  GroupListContainerView.swift
//  girlcode
//
//  Created by 17 GO Participant on 7/21/24.
//

import SwiftUI

struct GroupListContainerView: View {
    @State private var isPresented: Bool = false
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button("New Group"){
                    isPresented = true
                }
            }
            Spacer()
        }.padding()
            .sheet(isPresented: $isPresented){
                AddNewGroupView()
            }
    }
}

#Preview {
    GroupListContainerView()
}
