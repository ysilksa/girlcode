//
//  girlcodeApp.swift
//  girlcode
//
//  Created by 3 GO Participant on 6/29/24.
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
