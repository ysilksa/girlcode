//
//  User.swift
//  girlcode
//
//  Created by 17 GO Participant on 7/21/24.
//

import Foundation
import SwiftUI

struct User: Identifiable {
    let id = UUID()
    let name: String
    let profileImage: String // This can be a system name for an SF Symbol
    let message: String
    let messageType: MessageType
}

enum MessageType {
    case received, sent
}
