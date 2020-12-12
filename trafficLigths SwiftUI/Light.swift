//
//  Light.swift
//  trafficLigths SwiftUI
//
//  Created by Даниил Никулин on 10.12.2020.
//

import SwiftUI

struct Light: View {
    
    let color: UIColor
    let opacity: Double
    
    var body: some View {
        Color(color)
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .opacity(opacity)
            .shadow(radius: 10)
    }
}

struct Light_Previews: PreviewProvider {
    static var previews: some View {
        Light(color: .red, opacity: 0.3)
    }
}
