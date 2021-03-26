//
//  Chapter4View.swift
//  iDine
//
//  Created by Adrian Rose on 17.03.21.
//

import SwiftUI

struct Chapter4View: View {
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    let colorList = [Color.green, Color.yellow, Color.gray, Color.purple]
    
    @State private var theColor = Color.green
    
    var body: some View {
        
        VStack {
            
            
            
            
            Image(systemName: "cloud.heavyrain.fill")
                .resizable()
                .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.green)
                .background(Color.blue)

            // Page 110 How to render a gradient
            
            Text("Hello World")
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [.white, .blue, .green, .orange]), startPoint: .top, endPoint: .bottom))
            
            // Gradients == ShapeStyle - background fill stroke
            
            // Page 112 Images as Backgrounds
            
            Text("Hello Again")
                .background(
                    Image(systemName: "cloud.heavyrain.fill")
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .leading)
                        .foregroundColor(.purple)
                )
            
            
            // Page 114 Solid Shapes
            
            Circle()
                .trim(from: 0, to: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.green)
            
            // Page 118
            
            Rectangle()
                .foregroundColor(theColor)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .onReceive(timer, perform: { _ in
                    let randNumber = Int.random(in: 0..<4)
                    self.theColor = colorList[randNumber]
                })
            
            // 
            
            
            
            
        }
        
        
        
    }
    
    
    
    
    
}

struct Chapter4View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter4View()
    }
}
