//
//  ContentView.swift
//  WeatherApp
//
//  Created by Vivek Singh on 02/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.blue, Color.white],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            VStack {
                Text("Bangalore")
                    .font(.system(size: 32, weight: .bold))
                    .foregroundColor(.white)
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .frame(width: 128, height: 128)
                Text("25°C")
                    .font(.system(size: 48, weight: .bold))
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
