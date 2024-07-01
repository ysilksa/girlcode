//
//  Profile.swift
//  girlcode
//
//  Created by 3 GO Participant on 6/29/24.
//  This Swift file holds the profile, which users can customize.
//

import SwiftUI

struct Profile: View {
    
    // var for the center of the x-value
    @State var centerCoord = 196.5
    
    var body: some View {
        ZStack {
            // background gradient color
            backgroundGradient
            
            // white background for tabview
            whiteTabView
                .frame(width: 400, height: 116.0)
                .foregroundColor(.white)
                .position(CGPoint(x: centerCoord, y: 800))
            
            // border of example banner
            Ellipse()
                .fill(Color(hex: 15655915))
                .shadow(radius: 10)
                .frame(width: 580, height: 464)
                .position(CGPoint(x: centerCoord, y: 80))
            
            // example banner above pfp
            Image(.examplebanner5)
                .resizable(capInsets: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .scaledToFill()
                .frame(width: 580.0, height: 464.0)
                .clipShape(Ellipse())
                .position(CGPoint(x: centerCoord, y: 70))
            
            // example banner's pink tint
            Ellipse()
                .fill(Color(hex: 16672622))
                .frame(width: 580, height: 464)
                .position(CGPoint(x: centerCoord, y: 70))
                .opacity(0.5)
            
            // border of example pfp
            Circle()
                .fill(Color(hex: 15655915))
                .shadow(radius: 10)
                .frame(width: 220, height: 220)
                .position(CGPoint(x: centerCoord, y: 284))
            
            // example pfp
            Image(.examplepfp3)
                .resizable()
                .frame(width: 200.0, height: 200.0)
                .clipShape(Circle())
                .position(CGPoint(x: centerCoord, y: 284))
                
            
        }
        .ignoresSafeArea() // so we can go into the borders
    }
}

#Preview {
    Profile()
}
