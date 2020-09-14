//
//  DateManager.swift
//  youtube-onedaybuild
//
//  Created by Zvika on 9/14/20.
//  Copyright © 2020 Zvoykish. All rights reserved.
//

import Foundation

class DateManager {
    static func formatDate(date: Date) -> String {
        let df = DateFormatter()
        df.dateFormat = "EEEE, MMM d, yyyy"
        return df.string(from: date)
    }
    
}
