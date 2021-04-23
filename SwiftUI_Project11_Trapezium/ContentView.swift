//
//  ContentView.swift
//  SwiftUI_Project11_Trapezium
//
//  Created by 김선중 on 2021/04/23.
//

import SwiftUI

struct Trapezium: Shape {
    
    var offset: CGFloat = 100
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: .zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: 0, y: offset))
        path.closeSubpath()
        
        return path
    }
}

// MARK : body

struct ContentView: View {
    var body: some View {

        VStack(spacing: 50) {
            Trapezium(offset: 300)
                .fill(Color.pink)
                .frame(height: 400)
                .edgesIgnoringSafeArea(.all)
                
            
            Text("서근 개발블로그")
                .font(.title)
            
                Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
