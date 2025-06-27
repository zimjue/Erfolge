//
//  DateUtils.swift
//  Erfolge
//
//  Created by Jürgen Zimmer on 22.02.24.
//

import Foundation

class DateUtils {
    private static var formatter = createFormatter()

    static func getCaption(_ date: Date) -> String {
        return formatter.string(from: date)
    }

    private static func createFormatter() -> DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE dd.MM.yyyy"
        formatter.locale = Locale(identifier: "de_DE")
        return formatter
    }
}
