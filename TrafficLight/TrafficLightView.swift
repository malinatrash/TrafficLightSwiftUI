//
//  TrafficLightView.swift
//  TrafficLight
//
//  Created by Pavel Naumov on 16.08.2022.
//

import SwiftUI

struct TrafficLightView: View {
    let opacity: Double
    let color: Color
    var body: some View {
        Circle()
            .foregroundColor(color).opacity(opacity)
            .frame(width: 170, height: 170)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(opacity: 1, color: .red)
    }
}
