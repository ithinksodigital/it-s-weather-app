//
//  WelcomeView.swift
//  itsWeatherApp
//
//  Created by Rafal Pawelec on 16/03/2023.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            
            VStack(spacing: 20) {
                HStack {
                    Text("Welcome to the Weather App!")
                        .bold()
                    .font(.title)
                    Image(systemName: "cloud.sun.fill")
                        .font(.title)
                }
                Text("Plase share your current location to get the weather in your area")
                    .font(.subheadline)
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
//            .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .symbolVariant(.fill)
        .preferredColorScheme(.dark)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
