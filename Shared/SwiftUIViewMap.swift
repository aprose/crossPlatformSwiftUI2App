//
//  SwiftUIViewMap.swift
//  iDine
//
//  Created by Adrian Rose on 20.03.21.
//

import MapKit
import SwiftUI

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

extension CLLocationCoordinate2D: Identifiable {
    public var id: String {
        "\(latitude)-\(longitude)"
    }
}



struct SwiftUIViewMap: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    
    let annotations = [
          Location(name: "London", coordinate:
    CLLocationCoordinate2D(latitude: 51.507222, longitude:
    -0.1275)),
          Location(name: "Paris", coordinate:
    CLLocationCoordinate2D(latitude: 48.8567, longitude: 2.3508)),
          Location(name: "Rome", coordinate:
    CLLocationCoordinate2D(latitude: 41.9, longitude: 12.5)),
          Location(name: "Washington DC", coordinate:
    CLLocationCoordinate2D(latitude: 38.895111, longitude:
    -77.036667))
    ]
    
    @AppStorage("name") var name = "Anonymous"
    
    
    var body: some View {
        
        VStack {
            
            Text("Hello, \(name)")

            Map(coordinateRegion: $region, annotationItems: annotations) {

                MapAnnotation(coordinate: $0.coordinate) {
                    Circle()
                        .strokeBorder(Color.green, lineWidth: 4)
                        .frame(width: 10, height: 10)

                }
                
            }
            
        }
        
        
        
        
        
    }
}

struct SwiftUIViewMap_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewMap()
    }
}
