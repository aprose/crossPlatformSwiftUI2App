//
//  ItemRow.swift
//  iDine
//
//  Created by Adrian Rose on 13.03.21.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    
    let colors: [String: Color] = ["D" : .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    
    var body: some View {
        
        HStack {
            
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2))
            
            VStack(alignment: .leading) {
                
                Text(item.name)
                    .font(.headline)
                
                
                Text("$\(item.price)")
            }
            
            Spacer()
            
            ForEach(item.restrictions, id: \.self) { restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restriction, default: .black])
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            }
            
            
        }
        
        
    }
    
    
    
}

struct ItemRow_Previews: PreviewProvider {
    static let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    static var previews: some View {
        ItemRow(item: (menu.first?.items.first!)!)
    }
}
