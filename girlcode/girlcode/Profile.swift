//
//  Profile.swift
//  girlcode
//
//  Created by 3 GO Participant on 6/29/24.
//  This Swift file holds the profile, which users can customize.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        ZStack {
            // background gradient color
            backgroundGradient
            
            // white background for tabview
            whiteTabView
                .frame(width: 400, height: 116.0)
                .foregroundColor(.white)
                .position(CGPoint(x: 196.5, y: 800))
            
            Image(.examplepfp)
                .clipShape(Circle())
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Profile()
}
