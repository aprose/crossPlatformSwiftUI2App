//
//  iDineApp.swift
//  Shared
//
//  Created by Adrian Rose on 12.03.21.
//

import SwiftUI

@main
struct iDineApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
