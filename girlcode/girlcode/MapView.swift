//
//  Map.swift
//  girlcode
//
//  Created by 3 GO Participant on 7/2/24.
//

import SwiftUI
import MapKit

let MapLocations = [
    MapViewLocations(eventName: "Car Accident", eventDescription: "License plate ABCDEF was damaged in a hit-and-run", latitude: 41.8795, longitude: -87.6338)
]

struct MapView: View {
    // TODO: add custom pins on the map
    
    // the starting position of the camera, Chicago
//    @State private var startPos = MapCameraPosition.region(
//        MKCoordinateRegion(
//            center: CLLocationCoordinate2D(latitude: 41.881832, longitude: -87.623177),
//            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
//        )
//    )
    
    @State private var startPos = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 41.881832, longitude: -87.623177),
        span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
    )
    
    var body: some View {
        ZStack {
            
            // background gradient color
            backgroundGradient
            
            // Map set to the startPos of Chicago
            //Map(position: $startPos)
            
            Map(coordinateRegion: $startPos, annotationItems: MapLocations
            ) { place in
                MapAnnotation(coordinate: place.coordinate) {
                    PlaceAnnotationView(title: place.eventName)
                }
            }
            
            // white background for tabview
            whiteTabView
                .frame(width: 400, height: 116.0)
                .foregroundColor(.white)
                .position(CGPoint(x: 196.5, y: 800))
            
            ZStack { // "Home" location button
                // border background for "Home" button
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color(hex: 15655915))
                    .frame(width: 110, height: 50)
                
                // "Home Button"
                RoundedRectangle (cornerRadius: 40)
                    .fill(Color.white)
                    .frame(width: 100, height: 40)
                
                Button("Home") { // change coordinates to the Willis Tower
                    startPos =
                        MKCoordinateRegion(
                            center: CLLocationCoordinate2D(latitude: 41.878876, longitude: -87.635918),
                            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                        )
                    
                }
            }
            .position(CGPoint(x: 70, y: 700))
            
            
            ZStack { // "Work" location button
                // border background for "Work" button
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color(hex: 15655915))
                    .frame(width: 110, height: 50)
                
                // "Work Button"
                RoundedRectangle (cornerRadius: 40)
                    .fill(Color.white)
                    .frame(width: 100, height: 40)
                
                Button("Work") { // change the coordinates to the Apple Michigan Avenue Store
                    startPos =
                        MKCoordinateRegion(
                            center: CLLocationCoordinate2D(latitude: 41.898773, longitude: -87.622925),
                            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                        )
                    
                }
            }
            .position(CGPoint(x: 196.5, y: 700))
            
            ZStack { // "School" location button
                // border background for "School" button
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color(hex: 15655915))
                    .frame(width: 110, height: 50)
                
                // "School Button"
                RoundedRectangle (cornerRadius: 40)
                    .fill(Color.white)
                    .frame(width: 100, height: 40)
                
                Button("School") { // change the coordinates to Northwestern
                    startPos =
                        MKCoordinateRegion(
                            center: CLLocationCoordinate2D(latitude: 42.055984, longitude: -87.675171),
                            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                        )
                    
                }
                    
            }
            .position(CGPoint(x: 323, y: 700))
            
            
        }
        .ignoresSafeArea()
    }
}

#Preview {
    MapView()
}

// struct for a MapViewLocation
struct MapViewLocations: Identifiable {
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
    @State private var showTitle = true
    
    let title: String
    
    var body: some View {
        VStack(spacing: 0) {
            Text(title)
                .font(.callout)
                .padding(5)
                .background(Color(.white))
                .cornerRadius(10)
                .opacity(showTitle ? 0 : 1)
            
            // below here is the pin image
            Image(systemName: "mappin.circle.fill")
                .font(.title)
                .foregroundColor(.pink)
            
            Image(systemName: "arrowtriangle.down.fill")
                .font(.caption)
                .foregroundColor(.pink)
                .offset(x: 0, y: -5)
        }
        .onTapGesture {
            withAnimation(.easeInOut) {
                showTitle.toggle()
            }
        }
        
    }
}
