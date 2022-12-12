//
//  TagComponent.swift
//  Smart Migration
//
//  Created by Jan Janovec on 04.11.2022.
//

import SwiftUI

struct TagComponent: View {
    var tag: TagExample
    var body: some View {
        ZStack{
            Color.secondary.opacity(1)
            Text("#\(tag.name)")
                .padding()
        }
        .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

struct TagComponent_Previews: PreviewProvider {
    static var previews: some View {
        TagComponent(tag: TagExample(name: "Essentials", color: "Red"))
    }
}
