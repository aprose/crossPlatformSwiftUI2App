//
//  Ch12Forms.swift
//  iDine
//
//  Created by Adrian Rose on 21.03.21.
//

import SwiftUI

struct Ch12Forms: View {
    
    @State private var enableLogging = false
    @State private var selectedColor = "Red"
    @State private var colors = ["Red", "Green", "Blue"]
    
    
    var body: some View {
        
        NavigationView {
            
            // Start Form
            Form {
                
                Section(footer: Text("Note: Enabling logging may slow down the app")) {
                    
                    Picker("Select a color", selection: $selectedColor) {
                        
                        ForEach(colors, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    Toggle("Enable Logging", isOn: $enableLogging)

                }
                
                Section {
                    
                    Button("Save changes") {
                        // activate theme
                    }.disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    
                }
            }
            // End Form
            
        }
        .navigationTitle("Settings")
        
    }
}

struct Ch12Forms_Previews: PreviewProvider {
    static var previews: some View {
        Ch12Forms()
    }
}
