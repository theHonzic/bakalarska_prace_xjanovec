//
//  ContactsView.swift
//  Smart Migration
//
//  Created by Jan Janovec on 01.10.2022.
//

import SwiftUI

struct ContactsView: View {
    @State var showingMap: Bool = false
    var body: some View {
        if showingMap{
            ContactsMapView(showingMap: self.$showingMap)
        } else {
            ContactsListView(showingMap: self.$showingMap)
        }
        
    }
    
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
