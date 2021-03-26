//
//  Ch10StateBinding.swift
//  iDine
//
//  Created by Adrian Rose on 20.03.21.
//

import SwiftUI

// ObservedObject State EnvironmentObject StateObject

class User: ObservableObject {
   @Published var name = "Taylor"
   @Published var age = 26
}

struct DetailView: View {
    
   @ObservedObject var user: User
    
   var body: some View {
      Text("Hello, \(user.name)!")
   }
}

struct Ch10StateBinding: View {
    
    @StateObject var user = User()
    
    var body: some View {
        
        NavigationView {
            
            NavigationLink(destination: DetailView(user: user)) {
                        Text("Show detail view")
            }
            
        }
    }
}

struct Ch10StateBinding_Previews: PreviewProvider {
    static var previews: some View {
        Ch10StateBinding(user: User())
    }
}
