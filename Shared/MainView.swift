//
//  MainView.swift
//  iDine
//
//  Created by Adrian Rose on 15.03.21.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        TabView {
            
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
            SwiftUIViewMap()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            
        }
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(Order())
    }
}
