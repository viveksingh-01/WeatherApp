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
            LinearGradient(colors: [Color.blue, Color.purple],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
            VStack {
                Spacer()
                VStack(spacing: 0) {
                    Text("Bangalore")
                        .font(.system(size: 32, weight: .bold))
                        .foregroundStyle(.white)
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 128, height: 128)
                    Text("25°C")
                        .font(.system(size: 48, weight: .bold))
                        .foregroundStyle(.white)
                }
                Spacer()
                HStack {
                    WeeklyWeatherView(dayOfWeek: "Mon", weatherIcon: "sun.max.fill", temperature: 32)
                }
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeeklyWeatherView: View {
    var dayOfWeek: String
    var weatherIcon: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 22))
                .foregroundStyle(.white)
            Image(systemName: weatherIcon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°C")
                .font(.system(size: 22, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}
