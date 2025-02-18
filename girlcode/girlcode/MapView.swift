//
//  Map.swift
//  girlcode
//
//  Created by Chisa Yan on 7/2/24.
//

import SwiftUI
import MapKit

// TODO
// 2d to 3d map - showcase surroundings
// compass ?

// hard-coded example events, where each item in the list represents one event, its name/description, and its coordinates.
let MapLocations = [
    MapViewLocation(eventName: "Car Accident", eventDescription: "License plate ABCDEF was damaged in a hit-and-run near Adams St and Wells St.", latitude: 41.8795, longitude: -87.6338),
    MapViewLocation(eventName: "Aggravated Assault", eventDescription: "Woman in mid-thirties assaulted on Michigan and Illinois by person wearing black.", latitude: 41.890965, longitude: -87.623936),
    MapViewLocation(eventName: "Motor Vehicle Theft", eventDescription: "License plate number ABCDEF found with a broken window.", latitude: 42.056206, longitude: -87.677219),
    MapViewLocation(eventName: "Suspicious Person", eventDescription: "Suspicious person spotted between Lunt Hall and Swift Hall.", latitude: 42.055054, longitude: -87.675612),
    MapViewLocation(eventName: "Suspicious Person", eventDescription: "Suspicious person spotted between Wacker Dr and Monroe.", latitude: 41.880584, longitude: -87.636623)
]

struct MapView: View {
    // the starting position of the camera, Chicago
    @State private var startPos = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 41.881832, longitude: -87.623177),
        span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
    )
    
    var body: some View {
        ZStack {
            
            // background gradient color
            backgroundGradient
            
            // Map set to the startPos of Chicago
            // allows for navigation to a separate tab when the pin is pressed on
            NavigationView {
                Map(coordinateRegion: $startPos, annotationItems: MapLocations
                ) { place in
                    MapAnnotation(coordinate: place.coordinate) {
                      NavigationLink {
                        LocationEventView(event: place)
                      } label: {
                        PlaceAnnotationView(event: place)
                      }
                    }
                }
                .ignoresSafeArea()
                .mapControls {
                    MapPitchToggle()
                    MapCompass()
                }
            }
            .ignoresSafeArea()
            .navigationTitle("Custom Annotation")
            .navigationBarTitleDisplayMode(.inline)
            
            
            // white background for tabview
            whiteTabView
                .frame(width: 400, height: 116.0)
                .foregroundColor(.white)
                .position(CGPoint(x: 196.5, y: 800))
            
            ZStack { // "Home" location button
                // border background for "Home" button
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(hex: 15655915))
                    .frame(width: 110, height: 50)
                
                // "Home Button"
                RoundedRectangle (cornerRadius: 10)
                    .fill(Color.white)
                    .frame(width: 105, height: 45)
                
                Button("Home") { // change coordinates to the Willis Tower
                    startPos =
                        MKCoordinateRegion(
                            center: CLLocationCoordinate2D(latitude: 41.878876, longitude: -87.635918),
                            span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
                        )
                    
                }
            }
            .position(CGPoint(x: 70, y: 700))
            .foregroundColor(Color(hex: 14959476))
            .font(.custom("Sarabun-Regular", size: 20))
            
            
            ZStack { // "Work" location button
                // border background for "Work" button
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(hex: 15655915))
                    .frame(width: 110, height: 50)
                
                // "Work Button"
                RoundedRectangle (cornerRadius: 10)
                    .fill(Color.white)
                    .frame(width: 105, height: 45)
                
                Button("Work") { // change the coordinates to the Apple Michigan Avenue Store
                    startPos =
                        MKCoordinateRegion(
                            center: CLLocationCoordinate2D(latitude: 41.889505, longitude: -87.623056),
                            span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
                        )
                    
                }
                .foregroundColor(Color(hex: 14959476))
            }
            .position(CGPoint(x: 196.5, y: 700))
            .font(.custom("Sarabun-Regular", size: 20))
            
            ZStack { // "School" location button
                // border background for "School" button
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(hex: 15655915))
                    .frame(width: 110, height: 50)
                
                // "School Button"
                RoundedRectangle (cornerRadius: 10)
                    .fill(Color.white)
                    .frame(width: 105, height: 45)
                
                Button("School") { // change the coordinates to Northwestern
                    startPos =
                        MKCoordinateRegion(
                            center: CLLocationCoordinate2D(latitude: 42.055984, longitude: -87.675171),
                            span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
                        )
                }
                .foregroundColor(Color(hex: 14959476))
                    
            }
            .position(CGPoint(x: 323, y: 700))
            .font(.custom("Sarabun-Regular", size: 20))
            
        }
        .ignoresSafeArea()
       
    }
}

#Preview {
    MapView()
}

// struct for a MapViewLocation
struct MapViewLocation: Identifiable {
    let id = UUID()
    let eventName: String // name of the event, i.e. "Car crash"
    let eventDescription: String // description of the event, i.e. "Car with license plate ABCDEF was hit."
    let latitude: Double
    let longitude: Double
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}


// struct for a custom pin
struct PlaceAnnotationView: View {
    // allows the name to be toggled on and off
    @State private var showTitle = true
    
    let event: MapViewLocation
    
    var body: some View {
        VStack(spacing: 0) {
            VStack (spacing: 0) {
                Text(event.eventName)
            }
                .font(.callout)
                .padding(5)
                .background(Color(.white))
                .cornerRadius(10)
                .opacity(showTitle ? 0 : 1)
            
            // below here is the pin image
            Image(systemName: "mappin.circle.fill")
                .font(.title)
                .foregroundColor(Color(hex: 16726702))
            
            Image(systemName: "arrowtriangle.down.fill")
                .font(.caption)
                .foregroundColor(Color(hex: 16726702))
                .offset(x: 0, y: -5)
        }
        .onTapGesture {
              withAnimation(.easeInOut) {
                showTitle.toggle()
              }
        }
        
    }
}

// struct for a detailed event when you click for further details
struct LocationEventView: View {
    
    // var for the center of the x-value
    @State var centerCoord = 196.5
    
    // input variable for an event
    let event : MapViewLocation
    
    var body : some View {
        ZStack {
            // the background of the navigation view
            backgroundGradient
            
            VStack (spacing: 30) {
                // border and text for the details of the event
                ZStack {
                    // example image of a crossroads, could represent any image of the situation
                    ZStack {
                        Image(.crossroadsBackground)
                            .resizable()
                            .frame(width: 786, height: 400)
                        
                        // attributing the creator
                        Text("Designed by Freepik")
                            .font(.caption)
                            .foregroundColor(Color.white)
                            .padding(.top, 300.0)
                            
                    }
                    .position(x: 196.5, y: 300)
                
                    
                    
                    RoundedRectangle(cornerRadius: 40)
                        .position(x: centerCoord, y: 710)
                        .frame(width: 393, height: 500)
                        .foregroundColor(Color(hex: 16711422))
                    
                    

                }
                // text for the eventName
                Text(event.eventName)
                    .font(.custom("PlayfairDisplay-Regular", size: 40))
                    .foregroundColor(.black)
                    .position(x: 190, y: 0)
                
                // text for the eventDescription
                Text(event.eventDescription)
                    .font(.custom("Sarabun-Regular", size: 20))
                    .lineSpacing(10)
                    .lineLimit(nil)
                    .frame(width: 320, height: 500)
                    .foregroundStyle(Color.black)
                    .position(x: 180, y: -100)

                
            }
            .position(CGPoint(x: centerCoord, y: 290))
        }
        .ignoresSafeArea()
        //.navigationTitle("Further Details") // title at the top of the page
        
    }
    
}


