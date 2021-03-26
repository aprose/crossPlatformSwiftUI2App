//
//  Chapter5Viewlayout.swift
//  iDine
//
//  Created by Adrian Rose on 19.03.21.
//

import SwiftUI

struct Chapter5Viewlayout: View {
    
    
    
    var body: some View {
        
        VStack {
            
            Text("Hello, World!")
                .padding(.bottom, 200)

            Text("Hello World Again")
                .padding(.leading, 140)
            
            Text("Hello World Again Again")
                .padding(.top, 80)
        
        GeometryReader { geo in
            
                Text("Hi")
                    .frame(width: geo.size.width * 0.10, height: geo.size.height * 0.90, alignment: .bottom)
            }
            
            
            // Page 134
            
            // layoutPriority()
            
            HStack {
                Text("The rain Spain falls mainly on the Spainards")
                Text("Knowledge is power, France is bacon").layoutPriority(1)
            }
            .frame(width: 150, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
            
            
            
        }
    }
    
    
    
    
}

struct Chapter5Viewlayout_Previews: PreviewProvider {
    static var previews: some View {
        Chapter5Viewlayout()
    }
}
