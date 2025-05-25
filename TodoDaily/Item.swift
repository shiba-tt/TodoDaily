//
//  Item.swift
//  TodoDaily
//
//  Created by Tatsuya Shiba on 2025/05/26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
