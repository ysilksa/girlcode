//
//  Resource 6.swift
//  NavagationView ResourcesTab
//
//  Created by 8 GO Participant on 7/8/24.
//

import SwiftUI

struct Resource_6: View {
    var body: some View {
        ZStack {
            // background
            backgroundGradient
            
            // border of background of title of page
            Rectangle()
                .frame(width: 400, height: 200)
                .position(x: 196.5, y: 55)
                .foregroundColor(Color(hex: 15655915))
            
            // background of title of page
            Rectangle()
                .frame(width: 393, height: 200)
                .position(x: 196.5, y: 50)
                .foregroundColor(Color.white)
            
            // title of the page
            Text("Crisis Text Line")
                .font(.custom("PlayfairDisplay-Regular", size: 23))
                .multilineTextAlignment(.leading)
                .position(x: 100, y: 120)
                .shadow(radius: 10)
                .foregroundColor(.black)
    
            // resource icon
            Image(.resource6)
                .resizable()
                .frame(width: 300, height: 200)
                .position(x: 196.5, y: 280)
    
            // purple outline
            Rectangle()
                .fill(Color(hex: 15655915))
                .frame(width: 393, height: 450)
                .position(x: 196.5, y: 630)
                
            // white box for text
            Rectangle()
                .fill(Color.white)
                .frame(width: 393, height: 450)
                .position(x: 196.5, y: 635)
            
            // resource description
            Text("The Crisis Text Line offers free, 24/7 support for individuals in crisis through text messaging. By texting a specific keyword to their short code, individuals are connected with trained crisis counselors who provide support and help them navigate their situation. The service is designed to provide immediate help and connect individuals with longer-term resources if needed.")
                .frame(width: 340, height: 315)
                .font(.custom("Sarabun-Regular", size: 17))
                .position(x: 196.5, y: 530)
            
            // resource website
            Button("View Website", action: {if let url = URL(string: "https://www.thehotline.org") {
                    UIApplication.shared.open(url)
                }})
            .position(x: 131, y: 670)
            .accentColor(Color(hex: 16735349))
            .font(.custom("Sarabun-Regular", size: 17))
            
            // Phone Number (non functional)
            Link("Text", destination: URL(string: "tel:1111111111")!)
                .position(x: 262, y: 670)
                .accentColor(Color(hex: 16735349))
                .font(.custom("Sarabun-Regular", size: 17))
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Resource_6()
}
