//
//  Resource 2.swift
//  NavagationView ResourcesTab
//
//  Created by 8 GO Participant on 7/8/24.
//

import SwiftUI

struct Resource_2: View {
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
            Text("Rape, Abuse & Incest National Network")
                .font(.custom("PlayfairDisplay-Regular", size: 21))
                .multilineTextAlignment(.leading)
                .position(x: 200, y: 120)
                .shadow(radius: 10)
                .foregroundColor(.black)
    
            // resource icon
            Image(.resource2)
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
            Text("RAINN is the nation's largest anti-sexual violence organization. They operate the National Sexual Assault Hotline and provide a wealth of resources for survivors of sexual violence, including counseling, advocacy, and information on legal options. RAINN also conducts extensive public education campaigns to raise awareness and prevent sexual violence.")
                .frame(width: 340, height: 315)
                .font(.custom("Sarabun-Regular", size: 17))
                .position(x: 196.5, y: 530)
            
            // RAINN Website
            Button("View Website", action: {if let url = URL(string: "https://www.rainn.org/safety-prevention") {
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
    Resource_2()
}
