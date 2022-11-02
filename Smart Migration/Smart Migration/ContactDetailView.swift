//
//  ContactDetailView.swift
//  Smart Migration
//
//  Created by Jan Janovec on 27.10.2022.
//

import SwiftUI
import MapKit

struct ContactDetailView: View {

    @State var contact: ContactExample
    var body: some View {
        ScrollView{
            VStack{
                Image("ContactDetailGraphics")
                    .resizable()
                    .scaledToFit()
                Text("Integration centre Jihlava - Centre for Support of Integration of Foreigners (CPIC)")
                    .font(.title2)
                    .multilineTextAlignment(.center)
                
                Divider()
                
                HStack(spacing: 40){
                    Button(action: {}){
                        ZStack{
                            Color.secondary
                            VStack{
                                Image(systemName: "phone.fill")
                                Text("Call")
                                    .font(.caption)

                            }
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                    }.frame(width: 50, height: 50)
                    
                    Button(action: {}){
                        ZStack{
                            Color.secondary
                            VStack{
                                Image(systemName: "envelope.fill")
                                Text("Mail")
                                    .font(.caption)

                            }
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                    }.frame(width: 50, height: 50)
                    
                    Button(action: {}){
                        ZStack{
                            Color.secondary
                            VStack{
                                Image(systemName: "arrow.triangle.turn.up.right.diamond.fill")
                                Text("Navigate")
                                    .font(.caption)
                                    
                            }
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                    }.frame(width: 50, height: 50)
                    
                    Button(action: {}){
                        ZStack{
                            Color.secondary
                            VStack{
                                Image(systemName: "globe")
                                Text("Web")
                                    .font(.caption)

                            }
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                    }.frame(width: 50, height: 50)
                    
                }
                
                Spacer()
                
                Text("\(contact.description)")
                
                Spacer()
                
                MapSnapshotView(item: contact)
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
