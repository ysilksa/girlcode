//
//  Profile.swift
//  girlcode
//
//  Created by Chisa Yan on 6/29/24.
//  This Swift file holds the profile, which users can customize.
//


// TO DO
// add fonts?
// add a report button for reporting a user if they have bad intentions :(

import SwiftUI

// age-ranges for first dropdown menu
let ageRanges = ["18-24", "24-30", "30-36", "36-44", "44-50", "50-56", "56-62", "62-68"]

// neighborhood for second dropdown menu
let neighborhoods = ["Albany Park", "Andersonville", "Archer Heights", "Ashburn","Auburn Gresham", "Avalon Park", "Avondale", "Back of the Yards", "Belmont Cragin", "Beverly", "Bridgeport", "Brighton Park", "Bronzeville", "Bucktown", "Burnside", "Calumet Heights", "Chatham", "Chinatown", "Clearing", "Dunning", "East Side", "Edgewater", "Edison Park", "Englewood", "Forest Glen", "Gage Park", "Galewood", "Garfield Ridge", "Gold Coast", "Greater Grand Crossing", "Greektown", "Hegewisch", "Hermosa", "Homan Square", "Humboldt Park", "Hyde Park", "Irving Park", "Jefferson Park", "Kenwood", "Lake View", "Lincoln Park", "Lincoln Square", "Little Italy", "Little Village", "Logan Square", "The Loop", "Magnificent Mile", "McKinley Park", "Montclare", "Morgan Park", "Mount Greenwood", "Near North Side", "Near West Side", "New City", "North Park", "Oakland", "O'Hare", "Old Town", "Pilsen", "Printer's Row", "Pullman", "River North", "Riverdale", "Robert Taylor Homes", "Rogers Park", "Sauganash", "South Chicago", "South Deering", "South Shore", "Streeterville", "Ukrainian Village", "Uptown", "Washington Heights", "Washington Park", "West Elsdon", "West Ridge", "West Town", "Wicker Park", "Woodlawn", "Wrigleyville"]
    // neighborhoods that are recognized by the city

struct Profile: View {
    
    // var for the center of the x-value
    @State var centerCoord = 196.5
    
    // for the user to write their name in
    @State private var username: String = ""
    
    // for the user to write their looking to in
    @State private var lookingto: String = ""
    
    // default for choosing age range
    @State private var ageSelection: String = "Age Range"
    
    // default for choosing neighborhood
    @State private var neighborhoodSelection: String = "Neighborhood"
    
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
                .frame(width: 580.0, height: 464)
                .clipShape(Ellipse())
                .position(CGPoint(x: centerCoord, y: 70))
            
            // example banner's pink tint
            Ellipse()
                .fill(Color(hex: 16758465))
                .frame(width: 580, height: 464)
                .position(CGPoint(x: centerCoord, y: 70))
                .opacity(0.6)
            
            // border of example pfp
            Circle()
                .fill(Color(hex: 15655915))
                .shadow(radius: 10)
                .frame(width: 220, height: 220)
                .position(CGPoint(x: centerCoord, y: 270))
            
            // example pfp
            Image(.examplepfp3)
                .resizable()
                .frame(width: 200.0, height: 200.0)
                .clipShape(Circle())
                .position(CGPoint(x: centerCoord, y: 270))
                
            // for the Profile sections
                ZStack { // for the user's name
                    // border background for the name
//                    RoundedRectangle(cornerRadius: 10)
//                        .fill(Color(hex: 15655915))
//                        .frame(width: 200, height: 50)
//                        .position(CGPoint( x: centerCoord, y: 410))
//                    
//                    // name input
//                    RoundedRectangle (cornerRadius: 10)
//                        .fill(Color.white)
//                        .frame(width: 190, height: 40)
//                        .position(CGPoint(x: centerCoord, y: 410))
                    
                    Text("Chisa Yan")
                        .position(CGPoint(x: centerCoord, y: 410))
                        .font(.custom("Sarabun-Regular", size: 30))
                        .foregroundColor(.white)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                    
                    // text for the name, should be editable
//                    TextField("Username", text: $username)
//                        .frame(width: 180, height: 40, alignment: .center)
//                        .position(CGPoint(x: centerCoord, y: 410))
//                        .foregroundColor(Color(hex: 16726702))
//                        .multilineTextAlignment(.center)
                        
                }
               
                ZStack { // for "Looking to"
                    // "Looking to" Label
                    Text("About Me")
                        .position(CGPoint(x: 90, y: 385))
                        .foregroundStyle(.white)
                        .font(.custom("Sarabun-Regular", size: 20))
                    
                    RoundedRectangle (cornerRadius: 10) // border
                        .fill(Color(hex: 15655915))
                        .frame(width: 300, height: 50)
                    
                    RoundedRectangle  (cornerRadius: 10) // about me input
                        .fill(Color.white)
                        .frame(width: 295, height: 45)
                    
                    // text for the looking to, should be editable
                    TextField("Looking to...", text: $lookingto)
                        .frame(width: 280, height: 40, alignment: .center)
                        .foregroundColor(Color(hex: 16726702))
                        .multilineTextAlignment(.center)
                   
                }
                .position(CGPoint(x: centerCoord, y: 500))
                
                ZStack { // for age range
                    // "Age Range" Label
                    Text("Age Range")
                        .position(CGPoint(x: 95, y: 385))
                        .foregroundStyle(.white)
                        .font(.custom("Sarabun-Regular", size: 20))

                    
                    RoundedRectangle (cornerRadius: 10) // border
                        .fill(Color(hex: 15655915))
                        .frame(width: 300, height: 50)
                        
                    
                    RoundedRectangle  (cornerRadius: 10) // about me input
                        .fill(Color.white)
                        .frame(width: 295, height: 45)
                    
                    // dropdown menu for selecting an age range
                    Picker("Age Range", selection: $ageSelection) {
                        ForEach(ageRanges, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.menu)
                    .accentColor(Color(hex: 16726702))
                }
                .position(CGPoint(x: centerCoord, y: 590))
            
            ZStack { // for neighborhood
                // "Neighborhood" Label
                Text("Neighborhood")
                    .position(CGPoint(x: 110, y: 385))
                    .foregroundStyle(.white)
                    .font(.custom("Sarabun-Regular", size: 20))
                
                RoundedRectangle (cornerRadius: 10) // border
                    .fill(Color(hex: 15655915))
                    .frame(width: 300, height: 50)
                    
                
                RoundedRectangle  (cornerRadius: 10) // about me input
                    .fill(Color.white)
                    .frame(width: 295, height: 45)
                
                // dropdown menu for selecting a neighborhood
                Picker("Neighborhood", selection: $neighborhoodSelection) {
                    ForEach(neighborhoods, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
                .accentColor(Color(hex: 16726702))
            }
            .position(CGPoint(x: centerCoord, y: 680))

        }
        .ignoresSafeArea() // so we can go into the borders
    }
}

#Preview {
    Profile()
}
