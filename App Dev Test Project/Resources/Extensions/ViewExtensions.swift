//
//  Extensions.swift
//  App Dev Test Project
//
//  Created by noelsamonte on 7/20/23.
//

import SwiftUI

extension View {
    func ViewPadding(start: CGFloat = 0, end: CGFloat = 0, top: CGFloat = 0, bottom: CGFloat = 0) -> some View {
        return self
            .padding(.leading, start)
            .padding(.trailing, end)
            .padding(.top, top)
            .padding(.bottom, bottom)
    }
    
    func alignToLeft() -> some View {
        return HStack {
            self
            Spacer()
        }
    }
    
    func alignToRight() -> some View {
        return HStack {
            Spacer()
            self
        }
    }
    
    func alignToTop() -> some View {
        return VStack {
            self
            Spacer()
        }
    }
    
    func alignToBottom() -> some View {
        return VStack {
            Spacer()
            self
        }
    }
    
    func alignToCenterVertical() -> some View {
        return VStack {
            Spacer()
            self
            Spacer()
        }
    }
    
    func alignToCenterHorizontal() -> some View {
        return HStack {
            Spacer()
            self
            Spacer()
        }
    }
}
