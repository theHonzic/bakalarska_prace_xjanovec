//
//  ContactsList.swift
//  Smart Migration
//
//  Created by Jan Janovec on 02.11.2022.
//

import SwiftUI

struct ContactsListView: View {
    @Binding var showingMap: Bool
    
    

    var body: some View {
        VStack{
            List{
                ForEach(ContactList().contacts, id: \.self){contact in
                    ContactListRow(contact: contact)
                }
            }
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                Button(action: {showingMap.toggle()}){
                    if !showingMap {
                        Label("Show map", systemImage: "map.fill")
                    } else {
                        Label("Show contacts", systemImage: "list.bullet.rectangle.fill")
                    }
                }
            }
        }
    }
}

struct ContactsListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsListView(showingMap: .constant(false))
    }
}
