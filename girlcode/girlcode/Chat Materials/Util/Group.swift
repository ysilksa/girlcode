//
//  Group.swift
//  girlcode
//
//  Created by 17 GO Participant on 7/20/24.
//

import Foundation

struct Group: Codable, Identifiable{
    var documentId: String? = nil
    let subject: String
 //   var user : User
    
    var id: String{
        documentId ?? UUID().uuidString
    }
}

extension Group{
    func toDictionary() -> [String: Any] {
        return ["subject": subject]
    }
}
