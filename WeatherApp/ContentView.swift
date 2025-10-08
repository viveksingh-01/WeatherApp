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
                Spacer()
                VStack(spacing: 0) {
                    Text("Bangalore")
                        .font(.system(size: 32, weight: .bold))
                        .foregroundColor(.white)
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 128, height: 128)
                    Text("25°C")
                        .font(.system(size: 48, weight: .bold))
                        .foregroundColor(.white)
                }
                Spacer()
                HStack {
                    VStack {
                        Text("Mon")
                            .font(.system(size: 20))
                            .foregroundColor(.blue)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .font(.system(size: 32))
                        Text("32°C")
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}
