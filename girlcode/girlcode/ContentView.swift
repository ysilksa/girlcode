//
//  ContentView.swift
//  girlcode
//
//  Created by Chisa Yan on 6/29/24.
//  This swift file holds the tab view for the four separate tabs.
//

import SwiftUI

// the background screen featured in every tab
let backgroundGradient = LinearGradient(gradient: Gradient(colors: [Color(hex: 16753328), Color(hex: 16764578)]), startPoint: .top, endPoint: .bottom)

// the bottom tab that serves as a background for the tabs 
let whiteTabView = RoundedRectangle(cornerRadius: 40)

struct ContentView: View {

    var body: some View {
        // tab view
        TabView () {
            // customize the pages' text and icon
            // for HomePage Icon
            MapView()
                .tabItem {
                    Image(systemName:"map")
                    Text("Map")
                }
                .tag("MapView")
            
            // for Chat icon
            Chat()
                .tabItem {
                    Image (systemName: "bubble")
                    Text("Chat")
                }
                .tag("Chat")

            
            // For Resources icon
            Resources()
                .tabItem {
                    Image (systemName: "lightbulb")
                    Text("Resources")
                }
                .tag("Resources")
                
            // for Profile icon
            Profile()
                .tabItem {
                    Image (systemName: "heart")
                    Text("Profile")
                }
                .tag("Profile")
        }
        .tint(Color(.pink))
      
        }
    
        
    }


#Preview {
    ContentView()
}

// extension to use hex colors in swift
extension Color { // adds new functions to the Color function
    init(hex: Int, opacity: Double = 1) { // inputs
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: opacity
        )
    }
}
