//
//  ObstApp.swift
//  Obst
//
//  Created by AlexKinder on 2/24/21.
//

import SwiftUI

@main
struct ObstApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
