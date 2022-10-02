//
//  AboutView.swift
//  Smart Migration
//
//  Created by Jan Janovec on 01.10.2022.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("The Smart Migration app is operated by the Ministry of Labour and Social Affairs. The app is intended for all foreign nationals living in the Czech Republic and provides them with an overview of the most important information for their life in the territory of the Czech Republic. It is oriented on the labour market, social security, and other services. The app is exclusively indicative and should only provide general guidance for foreign nationals in the Czech environment. The Ministry of Labour and Social Affairs waives any liability regarding the use of any details or information available in this app.")
                    .padding()
                
                Image("MPSVLogoTransparent")
                    .resizable()
                    .frame(width: 120, height: 120)
                
                Text("This mobile application was developed as part of the project Smart Migration in the Czech Republic (grant no. TL01000468) supported by the Technological Agency of the Czech Republic, Mendel University in Brno, and Metropolitan University Prague.")
                    .padding()
                
                HStack{
                    Spacer()
                    Image("TACRLogoTransparent")
                        .resizable()
                        .frame(width: 120, height: 120)
                    Spacer()
                    Image("MendeluLogoTransparent")
                        .resizable()
                        .frame(width: 120, height: 120)
                    Spacer()
                }
                .padding()
            }
        }
            .navigationTitle("About project")
    }
        
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
