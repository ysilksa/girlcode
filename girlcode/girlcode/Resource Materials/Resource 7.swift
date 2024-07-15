//
//  Resource 7.swift
//  NavagationView ResourcesTab
//
//  Created by 8 GO Participant on 7/8/24.
//

import SwiftUI

struct Resource_7: View {
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
            Text("National Organization for Victim Assistance (NOVA)")
                .font(.custom("PlayfairDisplay-Regular", size: 20.5))
                .multilineTextAlignment(.leading)
                .position(x: 180, y: 115)
                .shadow(radius: 10)
                .foregroundColor(.black)
    
            // resource icon
            Image(.resource7)
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
            Text("NOVA is dedicated to championing dignity and compassion for those harmed by crime and crisis. They provide training for victim advocates, crisis response teams, and professionals working with victims. NOVA also offers direct support services and resources to victims, ensuring they have access to the necessary tools and assistance to recover and rebuild their lives.")
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
            Link("Call", destination: URL(string: "tel:1111111111")!)
                .position(x: 262, y: 670)
                .accentColor(Color(hex: 16735349))
                .font(.custom("Sarabun-Regular", size: 17))
        }
        .ignoresSafeArea()
    }
}

    


#Preview {
    Resource_7()
}
