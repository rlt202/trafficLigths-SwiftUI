//
//  ContentView.swift
//  trafficLigths SwiftUI
//
//  Created by Даниил Никулин on 10.12.2020.
//

import SwiftUI

struct ContentView: View {
    
    enum Colors {
        case red
        case yellow
        case green
    }
    
    @State private var redLightOpacity = 0.3
    @State private var yellowLightOpacity = 0.3
    @State private var greenLightOpacity = 0.3
    
    @State private var lightsOn = 1.0
    @State private var lightsOff = 0.3
    
    @State private var titleOfButton = "Run"
    
    @State private var currentLight = Colors.red
    
    var body: some View {
        ZStack {
            Color(.darkGray)
            VStack(spacing: 10) {
                Light(color: .red,
                      opacity: redLightOpacity)
                Light(color: .yellow,
                      opacity: yellowLightOpacity)
                Light(color: .green,
                      opacity: greenLightOpacity)
                Spacer()
                ChangingButton(title: "Stop") {
                        stop()
                    }
                ChangingButton(title: titleOfButton) {
                    titleOfButton = "Next color"
                    switchColors()
                }
            }
            .padding()
        }
    }
    
    private func switchColors() {
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLightOpacity = lightsOff
            redLightOpacity = lightsOn
        case .yellow:
            currentLight = .green
            redLightOpacity = lightsOff
            yellowLightOpacity = lightsOn
        case .green:
            currentLight = .red
            greenLightOpacity = lightsOn
            yellowLightOpacity = lightsOff
            titleOfButton = "Restart"
        }

    }
    private func stop()  {
        redLightOpacity = lightsOff
        yellowLightOpacity = lightsOff
        greenLightOpacity = lightsOff
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        }
    }
