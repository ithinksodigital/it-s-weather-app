//
//  LoadingView.swift
//  itsWeatherApp
//
//  Created by Rafal Pawelec on 16/03/2023.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack {
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView().preferredColorScheme(.dark)
    }
}
