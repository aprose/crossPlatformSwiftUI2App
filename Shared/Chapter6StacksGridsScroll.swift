//
//  Chapter6StacksGridsScroll.swift
//  iDine
//
//  Created by Adrian Rose on 19.03.21.
//

import SwiftUI

struct Chapter6StacksGridsScroll: View {
    
    #if os(iOS)
    @Environment(\.horizontalSizeClass) var hSizeClass
    #endif
    
    
    let data = (1...1000).map{ "Item \($0)" }
    
    let columns = [
        GridItem(.fixed(100)),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
        
        ScrollView(.horizontal) {
            
            LazyHGrid(rows: columns) {
                
                ForEach(data, id: \.self) { item  in
                    
                    Text(item)
                    
                }
            }
            .padding(.horizontal)
        }
        
//        VStack(alignment: .leading) {
//
//            Text("Hello, World!")
//            Divider()
//
//            Text("Hello, World!")
//            Divider()
//
//            Text("Hello, World!")
//            Divider()
//
//            ZStack {
//                Text("Hello, World!")
//
//                Image(systemName: "pencil")
//                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                    .frame(width: 50, height: 50, alignment: .center)
//                    .offset(x: 80, y: 0)
//            }
//
//
//            ZStack {
//
//               Rectangle()
//                  .fill(Color.green)
//                  .frame(width: 50, height: 50)
//
//               Rectangle()
//                  .fill(Color.blue)
//                  .frame(width: 20, height: 20)
//                  .zIndex(1)
//
//                Image(systemName: "pencil")
//                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                    .frame(width: 50, height: 50, alignment: .center)
//                    .offset(x: 80, y: 0)
//
//            }
//        }
    }
}

struct Chapter6StacksGridsScroll_Previews: PreviewProvider {
    static var previews: some View {
        Chapter6StacksGridsScroll()
    }
}
