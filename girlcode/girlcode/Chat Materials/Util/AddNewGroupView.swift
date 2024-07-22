//
//  AddNewGroupView.swift
//  girlcode
//
//  Created by 17 GO Participant on 7/20/24.
//

import SwiftUI

struct AddNewGroupView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject private var model: Model
    @State private var groupSubject: String = ""

    private var isFormValid: Bool {
          !groupSubject.isEmpty
      }
    
    private func saveGroup(){
        let group = Group(subject: groupSubject)
        model.saveGroup(group: group){ error in
            if let error{
                print(error.localizedDescription)
            }
            dismiss()
        }
        
    }
    
    var body: some View {
        NavigationStack {
                    VStack {
                        HStack {
                            TextField("Group Neighborhood", text: $groupSubject)
                        }
                        Spacer()
                        
                    } .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("New Group")
                                .bold()
                        }
                        
                        ToolbarItem(placement: .navigationBarLeading) {
                            Button("Cancel") {
                                dismiss()
                            }
                        }
                        
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button("Create") {
                                saveGroup()
                            }.disabled(!isFormValid)
                        }
                    }
                    
                }.padding()
    }
}

struct AddNewGroupView_Previews: PreviewProvider {
    static var previews: some View{
        NavigationStack{
            AddNewGroupView()
                .environmentObject(Model())
        }
    }
}
