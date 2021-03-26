//
//  Ch14AlertActionMenu.swift
//  iDine
//
//  Created by Adrian Rose on 22.03.21.
//

import SwiftUI

struct Ch14AlertActionMenu: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        
        VStack {
            
            Button("Hello, World!"){
                showingAlert = true
            }
//            .actionSheet(sheet(isPresented: $showingAlert, content: {
//                ActionSheet(
//                    title: Text(""),
//                    message: Text(""),
//                    buttons: [.deafule(Text(""))])
//            })
            
//            .alert(isPresented: $showingAlert) {
//
//                Alert(title: Text("Important Message"), message: Text("Wear Sunscreen"), dismissButton: .default(Text("Got it !")))
//            }

           
            // Context Menu
            
            
            Text("Options")
                .contextMenu(ContextMenu(menuItems: {
                    Text("Menu Item 1")
                    /*@START_MENU_TOKEN@*/Text("Menu Item 2")/*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("Menu Item 3")/*@END_MENU_TOKEN@*/
                }))
            
            // How to show a Menu
            
            Menu("More Options Menu"){
                Button("order Now") {
                    print("order")
                }
                Button("adjust Now") {
                    print("adjust")
                }
                Button("cancel"){
                    print("cancel")
                }
            }
            
            // How to let users pick options
            
            
            
            
            
            
        }
        
        
        
        
        
    }
}

struct Ch14AlertActionMenu_Previews: PreviewProvider {
    static var previews: some View {
        Ch14AlertActionMenu()
    }
}
