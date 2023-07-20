//
//  ContentView.swift
//  App Dev Test Project
//
//  Created by noelsamonte on 7/20/23.
//

import SwiftUI

struct ButtonPage: View {
    @StateObject var view_model = AppViewModel()
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    ForEach(1..<5, id: \.self) { index in
                        NavigationLink {
                            ButtonLogsView()
                                .environmentObject(view_model)
                                .onAppear() {
                                    view_model.toast_message = "Successfully Logged Event!"
                                    view_model.show_toast_message = true
                                    view_model.addButtonLogs(button_id: index.toString())
                                }
                        } label: {
                            HStack {
                                Text("Button \(index)")
                                    .foregroundColor(Color.white)
                                    .ViewPadding(start: 30, end: 30, top: 10, bottom: 10)
                            }
                            .background(Color.gray)
                            .cornerRadius(8)
                            .shadow(radius: 5)
                        }
                        .ViewPadding(top: 30)
                    }
                    
                    NavigationLink {
                        ButtonLogsView()
                            .environmentObject(view_model)
                    } label: {
                        HStack {
                            Text("Show Logs")
                                .foregroundColor(Color.white)
                                .ViewPadding(start: 30, end: 30, top: 10, bottom: 10)
                        }
                        .background(Color.blue)
                        .cornerRadius(8)
                        .shadow(radius: 5)
                    }
                    .alignToBottom()
                    .alignToRight()
                    .ViewPadding(end: 10, bottom: 10)

                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .navigationTitle("Button Event Logger")
            }
            
            if (view_model.show_toast_message) {
                ToastMessageView()
                    .environmentObject(view_model)
            }
        }
    }
}

struct ButtonPage_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPage()
            .environmentObject(AppViewModel())
    }
}
