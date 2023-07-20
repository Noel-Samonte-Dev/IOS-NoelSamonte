//
//  DataTypeExtensions.swift
//  App Dev Test Project
//
//  Created by noelsamonte on 7/20/23.
//

import Foundation

extension Int {
    func toString() -> String {
        return String(describing: self)
    }
}

extension Date {
    func dateFormatter(format: String) -> String {
        let date_formatter = DateFormatter()
        date_formatter.dateFormat = format
        return date_formatter.string(from: self)
    }
}

extension String {
    func string2Date(format: String) -> Date? {
        let date_formatter = DateFormatter()
        date_formatter.dateFormat = format
        return date_formatter.date(from: self)
    }
}
