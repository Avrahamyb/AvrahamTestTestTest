//
//  AvrahamTestTestTestApp.swift
//  AvrahamTestTestTest
//
//  Created by AvrahamDevelopper on 18.04.2024.
//

import SwiftUI
import SwiftData

@main
struct AvrahamTestTestTestApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
