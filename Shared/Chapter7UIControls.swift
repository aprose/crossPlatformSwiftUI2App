//
//  Chapter7UIControls.swift
//  iDine
//
//  Created by Adrian Rose on 20.03.21.
//

import SwiftUI

struct Chapter7UIControls: View {
    
    @State private var name: String = "Tim"
    @State private var emailAddress = ""
    
    let formatter: NumberFormatter = {
       let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()

    
    var body: some View {
        
        
        NavigationView {
            
            
            VStack {
                
                ForEach(0..<6) { element in
                    
                    NavigationLink( "-", destination: EmptyView()).keyboardShortcut("1", modifiers: .option)
                    Text("item is: \(element)")
                   
                }
                
                ProgressView("Downloading ...")
            }

            
        }
        
        
        
        
    }
    
    
    
    
    
}

struct Chapter7UIControls_Previews: PreviewProvider {
    static var previews: some View {
        Chapter7UIControls()
    }
}
