//
//  ItemDetail.swift
//  iDine
//
//  Created by Adrian Rose on 14.03.21.
//

import SwiftUI

struct ItemDetail: View {
    
    @EnvironmentObject var order: Order
    
    let item: MenuItem
    
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            Image(item.mainImage)
                .resizable()
                .scaledToFit()
            Text("Photo: \(item.photoCredit)")
                .padding(4)
                .background(Color.black)
                .font(.caption)
                .foregroundColor(.white)
                .offset(x: -5, y: -5)
            Button("Order This") {
                order.add(item: item)
            }
            .font(.headline)
            Spacer()
        }
        .navigationTitle(item.name)
       // .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            ItemDetail(item: MenuItem.example).environmentObject(Order())
        }
    }
}
