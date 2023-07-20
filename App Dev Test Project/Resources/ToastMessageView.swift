//
//  ToastMessageView.swift
//  App Dev Test Project
//
//  Created by noelsamonte on 7/20/23.
//

import SwiftUI

struct ToastMessageView: View {
    @EnvironmentObject var view_model: AppViewModel
    var body: some View {
        VStack {
            Text(view_model.toast_message)
                .bold()
                .foregroundColor(Color.white)
                .font(.system(size: 15))
                .padding(10)
        }
        .background(Color.black)
        .cornerRadius(8)
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                view_model.toast_message = ""
                view_model.show_toast_message = false
            }
        }
        .alignToBottom()
        .ViewPadding(bottom: 30)
    }
}

struct ToastMessageView_Previews: PreviewProvider {
    static var previews: some View {
        ToastMessageView()
    }
}
