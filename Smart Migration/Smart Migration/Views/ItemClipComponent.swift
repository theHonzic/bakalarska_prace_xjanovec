//
//  ItemClipComponent.swift
//  Smart Migration
//
//  Created by Jan Janovec on 02.11.2022.
//

import SwiftUI
import CoreLocation

struct ItemClipComponent: View {
    let item: View
    var body: some View {
        item
    }
}

struct ItemClipComponent_Previews: PreviewProvider {
    static var previews: some View {
        ItemClipComponent(item: MapSnapshotView(item: ContactExample(name: "Migrační úřad Brno", phoneNumber: 123412321, description: "Migrační úřad se stará o migranty, kteří přijeli do ČR z cizí země", address: Address(streetName: "Palackého", streetNumber: "23", cityName: "Brno", state: "Czech republic", postalCode: 60200, coordinates: CLLocationCoordinate2D(latitude: 49.195021, longitude: 16.60623)), email: "icijihlava@suz.cz", website: "http://www.integracnicentra.cz/jihlava"))
)
    }
}
