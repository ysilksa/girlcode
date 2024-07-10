//
//  girlcodeApp.swift
//  girlcode
//
//  Created by Chisa Yan on 6/29/24.
//

import SwiftUI
import Firebase

@main
struct girlcodeApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
