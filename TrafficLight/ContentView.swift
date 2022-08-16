//
//  ContentView.swift
//  TrafficLight
//
//  Created by Pavel Naumov on 16.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var allLightsDisable = false
    @State private var redLightOpacity = 0.7
    @State private var yellowLightOpacity = 0.7
    @State private var greenLightOpacity = 0.7
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack {
                TrafficLightView(opacity: redLightOpacity, color: .red)
                TrafficLightView(opacity: yellowLightOpacity, color: .yellow)
                TrafficLightView(opacity: greenLightOpacity, color: .green)
                
                Spacer()
                
                Button {
                    if allLightsDisable {
                        if redLightOpacity == 1 {
                            redLightOpacity = 0.5
                            yellowLightOpacity = 1
                        } else if yellowLightOpacity == 1 {
                            yellowLightOpacity = 0.5
                            greenLightOpacity = 1
                        } else {
                            greenLightOpacity = 0.5
                            redLightOpacity = 1
                        }
                    } else {
                        allLightsDisable.toggle()
                        redLightOpacity = 1
                    }
                } label: {
                   TrafficLightButtonView()
                }
                
                Spacer()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
