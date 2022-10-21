//
//  clean_sample_appApp.swift
//  clean_sample_app
//
//  Created by Macbook on 9.10.22.
//

import SwiftUI

@main
struct clean_sample_appApp: App {
    @Environment(\.scenePhase) private var scenePhase
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
