//
//  ContactsMapView.swift
//  Smart Migration
//
//  Created by Jan Janovec on 02.11.2022.
//

import SwiftUI
import MapKit

struct ContactsMapView: View {
    @Binding var showingMap: Bool
    @Binding var currentTab: TabTitle

    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.5, longitude: -0.12), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))

    var body: some View {
        Map(coordinateRegion: $mapRegion)
            .toolbar{
                if currentTab == .Contacts{
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
            //.onDisappear(perform: {showingMap = false})
    }
}

struct ContactsMapView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsMapView(showingMap: .constant(true), currentTab: .constant(TabTitle.Contacts))
    }
}
