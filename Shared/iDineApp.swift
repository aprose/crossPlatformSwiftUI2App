//
//  iDineApp.swift
//  Shared
//
//  Created by Adrian Rose on 12.03.21.
//

import SwiftUI

@main
struct iDineApp: App {
    
    #if os(macOS)
    @NSApplicationDelegateAdaptor(AppDelegateiDine.self) var appDelegate
    #endif
    
    let persistenceController = PersistenceController.shared
    
    @StateObject var order = Order()
    @Environment(\.scenePhase) var scenePhase
    
    
    
    init() {
        UserDefaults.standard.register(defaults: [
            "name" : "Taylor Swift",
            "highscore": 10
        ])
    }

    var body: some Scene {
        
        WindowGroup {
            
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(order)
            
        }.onChange(of: scenePhase ) { (newPhase) in
            if newPhase == .inactive {
                print("inactive")
            } else if newPhase == .active {
                print("active")
            } else if newPhase == .background {
                print("Background")
            }
        }
    }
}


#if os(macOS)
class AppDelegateiDine: NSObject, NSApplicationDelegate {
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        print("Your Code here")
    }
    
    
}
#endif
