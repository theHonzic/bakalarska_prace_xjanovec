//
//  InfoView.swift
//  Smart Migration
//
//  Created by Jan Janovec on 01.10.2022.
//

import SwiftUI

struct InfoView: View {
 
    var body: some View {
        
        ZStack{
            VStack{
                Image("SMLogoTransparent")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                
                Text("Smart Migration")
                    .font(.title)
                
                Form{
                    
                    Section(header: Text("Settings")){
                        NavigationLink(destination: LanguageView()){
                            Label("Language", systemImage: "globe")
                        }
                        
                    }
                    
                    Section(header: Text("Support")){
                        NavigationLink(destination: AboutView()){
                            Label("About app", systemImage: "apple.logo")
                        }
                    }
                }
                .scrollContentBackground(.hidden)
                
                
            }
        }
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
