//
//  Button.swift
//  trafficLigths SwiftUI
//
//  Created by Даниил Никулин on 10.12.2020.
//

import SwiftUI

struct ChangingButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundColor(Color.white)
            
        }
        .padding()
        .frame(width: 300, height: 50)
        .background(Color(.link))
        .cornerRadius(20)
    }
}

struct ChangingButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangingButton(title: "Run", action: {})
    }
}

