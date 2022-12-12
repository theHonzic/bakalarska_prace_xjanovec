//
//  ContactDetailView.swift
//  Smart Migration
//
//  Created by Jan Janovec on 27.10.2022.
//

import SwiftUI
import MapKit

struct ContactDetailView: View {

    var contact: ContactExample
    var body: some View {
        ScrollView{
            VStack{
                Image("ContactDetailGraphics")
                    .resizable()
                    .scaledToFit()
                Text("\(contact.name)")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                
                Divider()
                
                HStack(){
                    
                    
                    ButtonRoundedRectangle(text: "Call", icon: "phone.fill", action: {})
                    
                    ButtonRoundedRectangle(text: "Mail", icon: "envelope.fill", action: {})
                    
                    ButtonRoundedRectangle(text: "Navigate", icon: "arrow.triangle.turn.up.right.diamond.fill", action: {})
                    
                    ButtonRoundedRectangle(text: "Web", icon: "globe", action: {})
                    
                }
                
                Spacer()
                
                Text("\(contact.description)")
                
                Spacer()
                
                ZStack{
                    Color.gray.opacity(0.3)
                    MapSnapshotView(item: contact)
                        .padding()
                }
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
            }
        }
        .navigationTitle("\(contact.name)")
        .padding()
    }
}

struct ContactDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailView(contact: ContactList().contacts[1])
    }
}
