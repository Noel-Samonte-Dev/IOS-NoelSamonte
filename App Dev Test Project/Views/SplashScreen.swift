//
//  SplashScreen.swift
//  App Dev Test Project
//
//  Created by noelsamonte on 7/20/23.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        ZStack {
            Image("noel_logo")
                .resizable()
                .frame(width: 300, height: 300)
                .scaledToFit()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
