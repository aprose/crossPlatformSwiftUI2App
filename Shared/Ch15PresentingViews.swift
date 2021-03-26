//
//  Ch15PresentingViews.swift
//  iDine
//
//  Created by Adrian Rose on 22.03.21.
//

import SwiftUI

struct PlayerView: View {
    let name: String
    
    var body: some View {
        
        Text("Selected player: \(name)")
            .font(.largeTitle)
    }
}


struct FullScreenModalView: View {
   @Environment(\.presentationMode) var presentationMode
   var body: some View {
      Button("Dismiss Modal") {
         presentationMode.wrappedValue.dismiss()
      }
   }
}

struct Ch15PresentingViews: View {
    
    let players = [
          "Roy Kent",
          "Richard Montlaur",
          "Dani Rojas",
          "Jamie Tartt",
    ]
    
    @State private var selection: String? = nil
    
    @State private var showingDetail = false
    
    @State private var isPresented = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                
                List(players, id: \.self){ player in
                    NavigationLink(
                        destination: PlayerView(name: player),
                        label: {
                            Text(player)
                        })
                }.navigationTitle("Navigation")
                
                
                NavigationLink(destination: Text("View A"), tag:
                   "A", selection: $selection) {
                    Text("AA")
                    
                }
                NavigationLink(destination: Text("View B"), tag:
                   "B", selection: $selection) {
                    Text("BB")
                    
                }
                
                
                    Button("Tap to show A") {
                                selection = "A"
                            }
                    Button("Tap to show B") {
                                selection = "B"
                            }

                
                // View with Sheets
                
//                Button("Show Detail") {
//                         showingDetail.toggle()
//                      }
//                      .sheet(isPresented: $showingDetail) {
//                        PlayerView(name: "Hello ARD")
//                }
                
                
                // Fullscreen
                
//                Button("Present!") {
//                    isPresented.toggle()
//                }
//                .fullScreenCover(isPresented: $isPresented, content:
//                    FullScreenModalView.init)
                
            }
            
        }
        
    }
    
}

struct Ch15PresentingViews_Previews: PreviewProvider {
    static var previews: some View {
        Ch15PresentingViews()
    }
}
