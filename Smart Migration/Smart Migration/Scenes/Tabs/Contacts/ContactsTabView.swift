//
//  ContactsTabView.swift
//  Smart Migration
//
//  Created by Jan Janovec on 01.10.2022.
//

import SwiftUI

struct ContactsTabView: View {
    @Binding var currentTab: TabTitle
    @State var showingMap: Bool = false
    var body: some View {
        if showingMap{
            ContactsMapView(showingMap: self.$showingMap, currentTab: self.$currentTab)
        } else {
            ContactsListView(showingMap: self.$showingMap, currentTab: self.$currentTab)
        }
        
    }
    
}

struct ContactsTabView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsTabView(currentTab: .constant(TabTitle.Contacts))
    }
}
