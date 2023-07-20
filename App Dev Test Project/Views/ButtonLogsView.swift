//
//  ButtonLogsView.swift
//  App Dev Test Project
//
//  Created by noelsamonte on 7/20/23.
//

import SwiftUI

struct ButtonLogsView: View {
    @EnvironmentObject var view_model: AppViewModel
    var body: some View {
        let logs = view_model.button_logs.reversed()
        if (logs.isEmpty) {
            Text("No data found.")
                .bold()
                .foregroundColor(Color.black)
                .font(.system(size: 15))
                .padding(10)
        } else {
            List {
                ForEach(logs) { index in
                    VStack {
                        Text("Button \(index.button_id ?? "undefined") pressed")
                            .foregroundColor(Color.black)
                            .font(.system(size: 15))
                            .ViewPadding(start: 10, end: 10, top: 10, bottom: 10)
                        
                        Text("@")
                            .bold()
                            .foregroundColor(Color.black)
                            .font(.system(size: 18))
                            .ViewPadding(start: 10, end: 10)
                        
                        Text(index.created_at ?? "No data found.")
                            .foregroundColor(Color.black)
                            .font(.system(size: 15))
                            .ViewPadding(start: 10, end: 10, top: 10, bottom: 15)
                        
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.black, lineWidth: 1))
                    .shadow(radius: 10)
                }
            }
            .listStyle(PlainListStyle())
        }
    }
}

struct ButtonLogsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLogsView()
            .environmentObject(AppViewModel())
    }
}
