//
//  Map.swift
//  girlcode
//
//  Created by 3 GO Participant on 7/2/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    // TODO: add custom pins on the map
    
    // the starting position of the camera, Chicago
    @State private var startPos = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 41.881832, longitude: -87.623177),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        )
    )
    
    var body: some View {
        ZStack {
            
            // background gradient color
            backgroundGradient
            
            // Map set to the startPos of Chicago
            Map(position: $startPos)
            
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
                    startPos = MapCameraPosition.region(
                        MKCoordinateRegion(
                            center: CLLocationCoordinate2D(latitude: 41.878876, longitude: -87.635918),
                            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                        )
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
                    startPos = MapCameraPosition.region(
                        MKCoordinateRegion(
                            center: CLLocationCoordinate2D(latitude: 41.898773, longitude: -87.622925),
                            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                        )
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
                    startPos = MapCameraPosition.region(
                        MKCoordinateRegion(
                            center: CLLocationCoordinate2D(latitude: 42.055984, longitude: -87.675171),
                            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                        )
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
