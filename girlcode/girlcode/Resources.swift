//
//  Resources.swift
//  girlcode
//
//  Created by 3 GO Participant on 6/29/24.
//  This Swift file holds resources, which allows users to access resources and helplines.
//

import SwiftUI

struct Resources: View {
    var body: some View {
        ZStack {
            // background gradient color
            backgroundGradient
            
            // white background for tabview
            whiteTabView
                .frame(width: 400, height: 116.0)
                .foregroundColor(.white)
                .position(CGPoint(x: 196.5, y: 800))
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Resources()
}
