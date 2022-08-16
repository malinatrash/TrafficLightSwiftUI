//
//  TrafficLightButtonView.swift
//  TrafficLight
//
//  Created by Pavel Naumov on 17.08.2022.
//

import SwiftUI

struct TrafficLightButtonView: View {
    var body: some View {
        ZStack {
            Color(.blue)
                .clipShape(Capsule())
                .frame(width: 175, height: 75)
            Text("Next")
                .foregroundColor(.white)
                .font(.title)
                .bold()
        }
    }
}

struct TrafficLightButtonView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightButtonView()
    }
}
