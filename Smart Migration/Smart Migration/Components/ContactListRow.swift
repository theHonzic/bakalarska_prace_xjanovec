//
//  ContactListRow.swift
//  Smart Migration
//
//  Created by Jan Janovec on 27.10.2022.
//

import SwiftUI
import MapKit
struct ContactListRow: View {
    var contact: ContactExample
    var body: some View {
        NavigationLink(destination: ContactDetailView(contact: self.contact)){
            
            
            VStack(alignment: .leading){
                Text("\(contact.name)")
                    .fontWeight(.regular)
                    .foregroundColor(.primary)
                Text("\(contact.address.cityName)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
            }
            
        }
    }
}

struct ContactListRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactListRow(contact: ContactExample(name: "Migrační úřad Brno", phoneNumber: 123412321, description: "Migrační úřad se stará o migranty, kteří přijeli do ČR z cizí země", address: Address(streetName: "Palackého", streetNumber: "23", cityName: "Brno", state: "Czech republic", postalCode: 60200, coordinates: CLLocationCoordinate2D(latitude: 49.195061, longitude: 16.6206836)), email: "icijihlava@suz.cz", website: "http://www.integracnicentra.cz/jihlava"))
    }
}
