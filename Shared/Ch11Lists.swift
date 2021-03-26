//
//  Ch11Lists.swift
//  iDine
//
//  Created by Adrian Rose on 21.03.21.
//

import SwiftUI

struct Restaurant: Identifiable {
   let id = UUID()
   let name: String
}

struct RestaurantRow: View {
   var restaurant: Restaurant
   var body: some View {
      Text("Come and eat at \(restaurant.name)")
    
   }
}

struct Ch11Lists: View {
    
    let restaurants = [
          Restaurant(name: "Joe's Original"),
          Restaurant(name: "The Real Joe's Original"),
          Restaurant(name: "Original Joe's")
    ]

    
    var body: some View {
        
        ScrollViewReader { proxy in
        
        VStack{
            
            HStack {
                Text("Hello, List!")
            }
            
            Button("Jump !") {
                withAnimation {
                    proxy.scrollTo(50)

                }
            }
            
            List(0..<100) { i in

                    Text("Example \(i)")
                        .id(i)

                
            }.toolbar(content: {
                #if os(iOS)
                EditButton()
                #endif
            })
            .listRowBackground(Color.green)

            HStack {
                Image(systemName: "airplane.circle.fill")
                    .resizable()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)

            }
          }
        
        
        }
        
        
        
        
        
    }
    
    
    
    
    
}

struct Ch11Lists_Previews: PreviewProvider {
    static var previews: some View {
        Ch11Lists()
    }
}
