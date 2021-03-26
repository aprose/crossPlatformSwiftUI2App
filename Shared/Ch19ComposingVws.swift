//
//  Ch19ComposingVws.swift
//  iDine
//
//  Created by Adrian Rose on 26.03.21.
//

import SwiftUI

extension View {
   func iOS<Content: View>(_ modifier: (Self) -> Content) -> some View {
      #if os(iOS)
      return modifier(self)
      #else
      return self
      #endif
} }
extension View {
func macOS<Content: View>(_ modifier: (Self) -> Content) -> some View {
      #if os(macOS)
      return modifier(self)
      #else
      return self
      #endif
} }
extension View {
   func tvOS<Content: View>(_ modifier: (Self) -> Content) -> some View {
      #if os(tvOS)
      return modifier(self)
      #else
      return self
      #endif
} }
extension View {
   func watchOS<Content: View>(_ modifier: (Self) -> Content) -> some View {
      #if os(watchOS)
      return modifier(self)
      #else
      return self
      #endif
} }

struct Ch19ComposingVws: View {
    
    let title = Text("The Author")
                .font(.largeTitle)
    let subtitle = Text("Author")
                .foregroundColor(.secondary)
    
    
    var body: some View {
        
        VStack{
            
            Text("Hello World")
                .macOS { $0.padding(10) }
            
            Slider(value: .constant(0.5)) {
                Text("binderSlider")
            }
            
//            List(1..<51) {
//               Text("\($0)")
//            }
//            .listStyle(SidebarListStyle())
            
            Text("Hello ") + Text(Image(systemName: "star")) + Text("World!")
            
            (Text("Hello ") + Text(Image(systemName: "star")) + Text("World!"))
               .foregroundColor(.blue)
               .font(.largeTitle)
                
            title
            subtitle
            
            Text("SwiftUI ")
               .font(.largeTitle)
            + Text("is ")
               .font(.headline)
            + Text("awesome")
               .font(.footnote)
            
            Text("SwiftUI ")
               .font(.largeTitle)
            + Text("is ")
               .font(.headline)
            + Text("awesome")
               .font(.footnote)

            
        }
                
    }
    
    
    
}

struct Ch19ComposingVws_Previews: PreviewProvider {
    static var previews: some View {
       
        #if os(iOS)
        Ch19ComposingVws()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12 Pro Max"))
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            .previewDisplayName("iPhone 12")
        #elseif os(macOS)
        Ch19ComposingVws()
        #endif
    }
}
