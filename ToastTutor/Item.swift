//
//  Item.swift
//  ToastTutor
//
//  Created by Han Nguyen on 7/21/25.
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
