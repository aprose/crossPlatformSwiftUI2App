//
//  Ch17Drawing.swift
//  iDine
//
//  Created by Adrian Rose on 24.03.21.
//

import SwiftUI

struct Checkerboard: Shape {
   let rows: Int
   let columns: Int
   func path(in rect: CGRect) -> Path {
      var path = Path()
      let rowSize = rect.height / CGFloat(rows)
      let columnSize = rect.width / CGFloat(columns)
      for row in 0 ..< rows {
         for column in 0 ..< columns {
            if (row + column).isMultiple(of: 2) {
               let startX = columnSize * CGFloat(column)
               let startY = rowSize * CGFloat(row)
               let rect = CGRect(x: startX, y: startY, width: columnSize, height: rowSize)
               path.addRect(rect)
            }
         }
      }
return path }
}

            
            
            

struct SpiroSquare: Shape {
    
   func path(in rect: CGRect) -> Path {
    
      var path = Path()
      let rotations = 15
      let amount = .pi / CGFloat(rotations)
      let transform = CGAffineTransform(rotationAngle: amount)
      for _ in 0 ..< rotations {
         path = path.applying(transform)
         path.addRect(CGRect(x: -rect.width / 3, y:-rect.height / 3, width: rect.width, height: rect.height))
      }
    
    return path
   }
}






struct Ch17Drawing: View {
    
    
    
    var body: some View {
        
        VStack {
            
            SpiroSquare()
                    .stroke()
                    .frame(width: 100, height: 100)

            Checkerboard(rows: 16, columns: 16)
                     .fill(Color.blue)
                     .frame(width: 200, height: 200)
            
        }
        .frame(width: 400, height: 500)
    }
    
    
}

struct Ch17Drawing_Previews: PreviewProvider {
    static var previews: some View {
        Ch17Drawing()
    }
}
