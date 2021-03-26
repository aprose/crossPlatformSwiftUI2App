//
//  Ch16Transforming.swift
//  iDine
//
//  Created by Adrian Rose on 23.03.21.
//

import SwiftUI

struct Ch16Transforming: View {
    
    
    
    var body: some View {
        
        
        VStack {
            
            ZStack {
                     Rectangle()
                        .fill(Color.black)
                        .frame(width: 200, height: 200)
                     RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .fill(Color.red)
                        .frame(width: 200, height: 200)
                     Capsule()
                        .fill(Color.green)
                        .frame(width: 100, height: 50)
                     Ellipse()
                        .fill(Color.blue)
                        .frame(width: 100, height: 50)
                     Circle()
                        .fill(Color.white)
                        .frame(width: 100, height: 50)
            }
            
            //ProgressView("Loading")
            
            Text("Up we go")
              .scaleEffect(1)
              .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            Button("Press") { }
            .accentColor(.orange)
            
            Circle()
                .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)

            
            ZStack {
               Circle()
                  .fill(Color.red)
                  .frame(width: 20, height: 20)
                  .offset(x: -5)
               Circle()
                  .fill(Color.blue)
                  .frame(width: 20, height: 20)
                  .offset(x: 5)
                  .blendMode(.multiply)
            }
        }
            
    }
    
    
    
}

struct Ch16Transforming_Previews: PreviewProvider {
    static var previews: some View {
        Ch16Transforming()
    }
}
