//
//  App_Dev_Test_ProjectApp.swift
//  App Dev Test Project
//
//  Created by noelsamonte on 7/20/23.
//

import SwiftUI

@main
struct App_Dev_Test_ProjectApp: App {
    @State var timer_done: Bool = false
    var body: some Scene {
        WindowGroup {
            if (timer_done) {
                ButtonPage()
            } else {
                SplashScreen()
                    .onAppear(){
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            self.timer_done = true
                        }
                    }
            }
        }
    }
}
