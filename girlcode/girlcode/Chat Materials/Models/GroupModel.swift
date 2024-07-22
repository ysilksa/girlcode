//
//  GroupModel.swift
//  girlcode
//
//  Created by 17 GO Participant on 7/20/24.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseFirestore
import FirebaseFirestoreSwift

@MainActor
class Model: ObservableObject{
    
    @Published var groups: [Group] = []
    
//    func updateDisplayName(for user: User, displayName: String) async throws{
//        let request = user.createProfileChangeRequest()
//        request.displayName = displayName
//        try await request.commitChanges()
//    }
    
    func saveGroup(group: Group, completion: @escaping (Error?) -> Void){
        let db = Firestore.firestore()
        var docRef: DocumentReference? = nil
         docRef = db.collection("groups")
            .addDocument(data: group.toDictionary()) {[weak self] error in
                if error != nil{
                    completion(error)
                } else{
                    //add the group to groups array
                    if let docRef{
                        var newGroup = group
                        newGroup.documentId = docRef.documentID
                        self?.groups.append(newGroup)
                        
                    }
                
                }
            }
    }
}
