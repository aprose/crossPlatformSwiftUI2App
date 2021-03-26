//
//  Ch9Gestures.swift
//  iDine
//
//  Created by Adrian Rose on 20.03.21.
//

import SwiftUI

struct Ch9Gestures: View {
    
    @State private var scale: CGFloat = 1.0
    @State private var overText = false
    
    var body: some View {
        
        VStack {
            
            Text("Hello, Gesture")
                .contentShape(Rectangle())
                .onHover(perform: { hovering in
                    print("hovering over text")
                    overText = hovering
                })

            
            Image(systemName: "abc")
                .scaleEffect(scale)
                .gesture(
                    TapGesture()
                        .onEnded({ _ in
                            scale += 0.1
                        })
                )
                .onTapGesture {
                    print("tapped here")
                }
            
            ZStack {
                
                Button("Tap Me") {
                    print("tapped")
                }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color.green)
                
                Rectangle()
                    .allowsHitTesting(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
                
                
                
                
            }
            
        }
        
        
       
        
        
        
    }
    
    
    
    
    
    
}

struct Ch9Gestures_Previews: PreviewProvider {
    static var previews: some View {
        Ch9Gestures()
    }
}
