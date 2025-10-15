//
//  ContentView.swift
//  WeatherApp
//
//  Created by Vivek Singh on 02/10/25.
//

import SwiftUI

struct ContentView: View {
    @State var isNightMode: Bool = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNightMode: $isNightMode)
            VStack {
                Spacer()
                CityTextView(city: "Bangalore, IN")
                TodayWeatherView(imageName: "cloud.sun.fill", temperature: 28)
                Spacer()
                WeeklyForecastView()
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DayOfWeekView: View {
    var day: String
    var weatherIcon: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(day)
                .font(.system(size: 22))
                .foregroundStyle(.white)
            Image(systemName: weatherIcon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 22, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct CityTextView: View {
    var city: String
    var body: some View {
        Text(city)
            .font(.system(size: 32, weight: .bold))
            .foregroundStyle(.white)
    }
}

struct TodayWeatherView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 128, height: 128)
            Text("\(temperature)°C")
                .font(.system(size: 48, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

struct WeeklyForecastView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 36) {
                DayOfWeekView(day: "Sun", weatherIcon: "cloud.fill", temperature: 25)
                DayOfWeekView(day: "Mon", weatherIcon: "cloud.rain.fill", temperature: 26)
                DayOfWeekView(day: "Tue", weatherIcon: "sun.max.fill", temperature: 30)
                DayOfWeekView(day: "Wed", weatherIcon: "sun.max.fill", temperature: 32)
                DayOfWeekView(day: "Thu", weatherIcon: "cloud.sun.fill", temperature: 28)
                DayOfWeekView(day: "Fri", weatherIcon: "cloud.fill", temperature: 26)
                DayOfWeekView(day: "Sat", weatherIcon: "cloud.rain.fill", temperature: 23)
            }
            .padding(36)
        }
    }
}

struct BackgroundView: View {
    @Binding var isNightMode: Bool
    
    var topColor: Color { isNightMode ? .black : .blue }
    var bottomColor: Color { isNightMode ? .gray : .purple }
    
    var body: some View {
        LinearGradient(colors: [topColor, bottomColor],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}
