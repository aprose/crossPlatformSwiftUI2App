//
//  SwiftUIViewOne.swift
//  iDine
//
//  Created by Adrian Rose on 12.03.21.
//

import SwiftUI

struct SwiftUIViewOne: View {
    
    
    static let taskDateFormatter: DateFormatter = {
        
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    let dueDate = Date()
    
    @State private var name = "Paul"
    
    var body: some View {
        
        VStack {
            
            Text("Hello, World! : \(dueDate, formatter: Self.taskDateFormatter)")
                .font(.footnote)
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
                .lineLimit(/*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/136.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/102.0/*@END_MENU_TOKEN@*/)
                .lineSpacing(/*@START_MENU_TOKEN@*/5.0/*@END_MENU_TOKEN@*/)

            
            Text(Date().addingTimeInterval(600), style: .date)
            
            Text(Date().addingTimeInterval(900), style: .relative)
            
            Text(Date().addingTimeInterval(600), style: .timer)
            
            
            TextField("Shout your name at me", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
            
            
            Label("Your Account", systemImage: "person.crop.circle")
            
            VStack {
                
                Label("Text Only", systemImage: "heart")
                
                Label("Star", systemImage: "star")
                
            }
            
            
            
        }
        
            
        
        
        
        
    }
}

struct SwiftUIViewOne_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewOne()
    }
}
