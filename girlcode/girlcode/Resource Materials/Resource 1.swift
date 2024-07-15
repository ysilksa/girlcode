//
//  Resource 1.swift
//  NavagationView ResourcesTab
//
//  Created by 8 GO Participant on 7/8/24.
//

import SwiftUI

struct Resource_1: View {
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
            Text("National Domestic Violence Hotline")
                .font(.custom("PlayfairDisplay-Regular", size: 23))
                .multilineTextAlignment(.leading)
                .position(x: 200, y: 120)
                .shadow(radius: 10)
                .foregroundColor(.black)
    
            // resource icon
            Image(.resource1)
                .resizable()
                .frame(width: 200, height: 200)
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
            Text("The National Domestic Violence Hotline provides confidential support, resources, and advocacy for individuals experiencing domestic violence. Available 24/7, the hotline offers crisis intervention, safety planning, and assistance in connecting to local services and shelters. Their trained advocates are available via phone, chat, or text.")
                .frame(width: 340, height: 315)
                .font(.custom("Sarabun-Regular", size: 17))
                .position(x: 196.5, y: 530)
            
            // National Domestic Violence Hotline
            Button("View Website", action: {if let url = URL(string: "https://www.thehotline.org") {
                UIApplication.shared.open(url)
            }})
            .position(x: 131, y: 670)
            .accentColor(Color(hex: 16735349))
            .font(.custom("Sarabun-Regular", size: 17))
            
            // Phone Number (non-functional)
            Link("Call", destination: URL(string: "tel:1111111111")!)
                .position(x: 262, y: 670)
                .accentColor(Color(hex: 16735349))
                .font(.custom("Sarabun-Regular", size: 17))
            

        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    Resource_1()
}
