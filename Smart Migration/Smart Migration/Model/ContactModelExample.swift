//
//  ContactModelExample.swift
//  Smart Migration
//
//  Created by Jan Janovec on 27.10.2022.
//

import Foundation
import MapKit

struct ContactExample: Hashable{
    var name: String
    var phoneNumber: Int
    var description: String
    var address: Address
    var email: String
    var website: String
}

struct Address: Hashable {
    
    
    var streetName: String
    var streetNumber: String
    var cityName: String
    var state: String
    var postalCode: Int
    
    var coordinates: CLLocationCoordinate2D
}

class ContactList{
    
    
    var contacts = [
                    ContactExample(name: "Migrační úřad Brno", phoneNumber: 123412321, description: "Migrační úřad se stará o migranty, kteří přijeli do ČR z cizí země", address: Address(streetName: "Palackého", streetNumber: "23", cityName: "Brno", state: "Czech republic", postalCode: 60200, coordinates: CLLocationCoordinate2D(latitude: 49.195021, longitude: 16.60623)), email: "icijihlava@suz.cz", website: "http://www.integracnicentra.cz/jihlava"),
                    ContactExample(name: "Усі події в Україні та світі за останній час, найголовніше, огляди", phoneNumber: 123412321, description: "Migrační úřad se stará o migranty, kteří přijeli do ČR z ciafdsdfsafzí země", address: Address(streetName: "Palackého", streetNumber: "23", cityName: "Brno", state: "Czech republic", postalCode: 60200, coordinates: CLLocationCoordinate2D(latitude: 49.195061, longitude: 16.606836)), email: "icijihlava@suz.cz", website: "http://www.integracnicentra.cz/jihlava"),
                    ContactExample(name: "Migrační úřad Brno", phoneNumber: 123412321, description: "Migrační úřad se stará o migranty, kteří přijeli do ČR z cizí země", address: Address(streetName: "Palackého", streetNumber: "23", cityName: "Brno", state: "Czech republic", postalCode: 60200, coordinates: CLLocationCoordinate2D(latitude: 49.195061, longitude: 16.606836)), email: "icijihlava@suz.cz", website: "http://www.integracnicentra.cz/jihlava"),
                    ContactExample(name: "Integration centre Jihlava - Centre for Support of Integration of Foreigners (CPIC)", phoneNumber: 123412321, description: "Migrační úřad se stará o migranty,fdsadfs kteří fpřijeli do ČR z cizí země", address: Address(streetName: "Palackého", streetNumber: "23", cityName: "Jihlava", state: "Czech republic", postalCode: 60200, coordinates: CLLocationCoordinate2D(latitude: 49.3333, longitude: 15.5833)), email: "icijihlava@suz.cz", website: "http://www.integracnicentra.cz/jihlava"),
                    ContactExample(name: "Migrační úřad Brno", phoneNumber: 123412321, description: "Migrační úřad se starfá o migranty, kteří přijeli do ČR z cizí země", address: Address(streetName: "Palackého", streetNumber: "23", cityName: "Brno", state: "Czech republic", postalCode: 60200, coordinates: CLLocationCoordinate2D(latitude: 49.195061, longitude: 16.66836)), email: "icijihlava@suz.cz", website: "http://www.integracnicentra.cz/jihlava"),
                    ContactExample(name: "Migrační úřad Brno", phoneNumber: 123412321, description: "Migrační úřad se starfáfd o migranty, kteří přijeli do ČR z cizí země", address: Address(streetName: "Palackého", streetNumber: "23", cityName: "Brno", state: "Czech republic", postalCode: 60200, coordinates: CLLocationCoordinate2D(latitude: 49.195061, longitude: 16.6206836)), email: "icijihlava@suz.cz", website: "http://www.integracnicentra.cz/jihlava"),
                    ContactExample(name: "Integration centre Jihlava - Centre for Support of Integration of Foreigners (CPIC)", phoneNumber: 123412321, description: "Migrační úřad se stará o migranty, kteří přijelai do ČR z cizí země", address: Address(streetName: "Palackého", streetNumber: "23", cityName: "Brno", state: "Czech republic", postalCode: 60200, coordinates: CLLocationCoordinate2D(latitude: 49.195061, longitude: 16.6206836)), email: "icijihlava@suz.cz", website: "http://www.integracnicentra.cz/jihlava")
    
    ]
}

//cite
extension CLLocationCoordinate2D: Hashable {
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(latitude)
        hasher.combine(longitude)
    }
}
