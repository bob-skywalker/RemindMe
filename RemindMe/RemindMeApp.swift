//
//  RemindMeApp.swift
//  RemindMe
//
//  Created by Bo Zhong on 8/18/23.
//

import SwiftUI
import FirebaseCore

@main
struct RemindMeApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
