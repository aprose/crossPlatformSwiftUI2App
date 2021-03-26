//
//  Ch18Animation.swift
//  iDine
//
//  Created by Adrian Rose on 24.03.21.
//

import SwiftUI


struct Ch18Animation: View {
    
    @State private var angle: Double = 0
    @State private var borderThickness: CGFloat = 1
    @State private var opacity = 1.0
    
    var body: some View {
        
        VStack {
            
            
            Button("Press here") {
                withAnimation(.easeInOut) {
                    angle += 45
                    borderThickness += 1

                }
            }
            .padding()
            .border(Color.red, width: borderThickness)
            .rotationEffect(.degrees(angle))
            
            
            
            
            Text("Hi, World!")
        }
        
    }
}

struct Ch18Animation_Previews: PreviewProvider {
    static var previews: some View {
        Ch18Animation()
    }
}
