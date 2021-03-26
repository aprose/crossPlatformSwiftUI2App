//
//  Ch13Containers.swift
//  iDine
//
//  Created by Adrian Rose on 21.03.21.
//

import SwiftUI

struct PagingView: View {
    var body: some View {
        VStack {
            Group {
                Text("first")
                Text("first")
                Text("first")
                Text("first")
                Text("first")
                Text("first")
            }
        }
    }
}


struct mainContentView: View {
    
    var body: some View {
        
        Text("Main Content Goes Here !")
            .navigationTitle("Welcome")
            .toolbar(content: {
                Button("Help"){
                    print("Tapped")
                }
            })

        
    }
    
    
}


// NavigationView / TabView / Group

struct Ch13Containers: View {
    
    
    
    var body: some View {
        
        TabView {
            
            // Main View is SplitViewController
            NavigationView {
                
                List(1..<100) { i in
                   Text("Row \(i)")
                }
                .listStyle(SidebarListStyle())
                
                Text("Hello, World!")
                
                mainContentView()

            }.toolbar(content: {
                Button("Press Me") {
                    print("Pressed")
                }
            })
            .tabItem {
                    Image(systemName: "map")
                    Text("Navigate Main")
                }.tag(0)

            // Second View is Text View
            Text("Hallloo")
                .tabItem {
                    Image(systemName: "map")
                    Text("First")
                }.tag(1)

            // Third View is Text View
            Text("Hi Again")
                .tabItem {
                    Image(systemName: "map")
                    Text("Second")
                }.tag(2)

        }
        
    }
    
}

struct Ch13Containers_Previews: PreviewProvider {
    static var previews: some View {
        Ch13Containers()
    }
}
