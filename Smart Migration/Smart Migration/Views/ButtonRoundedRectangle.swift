//
//  ButtonRoundedRectangle.swift
//  Smart Migration
//
//  Created by Jan Janovec on 03.11.2022.
//

import SwiftUI

struct ButtonRoundedRectangle: View {
    var text: String
    var icon: String
    
    var action: () -> Void
    
    var body: some View {
        Button(action:{
            action()
        }){
            ZStack{
                Color.gray.opacity(0.3)
                VStack(alignment: .center, spacing: 3){
                    Image(systemName: "\(icon)")
                    Text("\(text)")
                }
            }
        }
        
        .frame(width: 80, height: 56)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

struct ButtonRoundedRectangle_Previews: PreviewProvider {
    static var previews: some View {
        ButtonRoundedRectangle(text: "Call", icon: "phone.fill", action: {print("Hello")})
    }
}
