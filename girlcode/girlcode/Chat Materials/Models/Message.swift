//
//  Message.swift
//  Chat
//
//  Created by 17 GO Participant on 7/8/24.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}

