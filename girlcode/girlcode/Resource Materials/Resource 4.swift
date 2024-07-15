//
//  Resource 4.swift
//  NavagationView ResourcesTab
//
//  Created by 8 GO Participant on 7/8/24.
//

import SwiftUI

struct Resource_4: View {
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
            Text("National Human Trafficking Hotline")
                .font(.custom("PlayfairDisplay-Regular", size: 23))
                .multilineTextAlignment(.leading)
                .position(x: 200, y: 120)
                .shadow(radius: 10)
                .foregroundColor(.black)
    
            // resource icon
            Image(.resource4)
                .resizable()
                .frame(width: 250, height: 200)
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
            
            // Resource description 
            Text("The National Human Trafficking Hotline offers confidential assistance to victims of human trafficking and those who suspect trafficking activities. Operated by Polaris, the hotline is available 24/7 to provide crisis intervention, support, and connections to local services and law enforcement. The hotline also gathers data to help combat human trafficking on a broader scale.")
                .frame(width: 340, height: 315)
                .font(.custom("Sarabun-Regular", size: 17))
                .position(x: 196.5, y: 530)
            
            // National Human Trafficking Hotline Website
            Button("View Website", action: {if let url = URL(string: "https://www.thehotline.org") {
                    UIApplication.shared.open(url)
                }})
            .position(x: 131, y: 670)
            .accentColor(Color(hex: 16735349))
            .font(.custom("Sarabun-Regular", size: 17))
            
            // Phone Number (non functional)
            Link("Call", destination: URL(string: "tel:1111111111")!)
                .position(x: 262, y: 670)
                .accentColor(Color(hex: 16735349))
                .font(.custom("Sarabun-Regular", size: 17))
        }
        .ignoresSafeArea()
    }
}

#Preview {
    Resource_4()
}
