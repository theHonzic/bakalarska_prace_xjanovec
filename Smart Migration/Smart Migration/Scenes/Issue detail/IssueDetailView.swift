//
//  IssueDetailView.swift
//  Smart Migration
//
//  Created by Jan Janovec on 03.11.2022.
//

import SwiftUI

struct IssueDetailView: View {
    var issue: IssueExample
    var body: some View {
        ScrollView{
            VStack(){
                Image("Headache")
                    .resizable()
                    .scaledToFit()
                HStack{
                    Text("\(issue.title)")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
                .padding(.leading)
                HStack{
                    Text("\(DateFormatter.localizedString(from: issue.posted, dateStyle: .long, timeStyle: .none))")
                        .font(.callout)
                        .foregroundColor(Color.gray)
                    Spacer()
                }
                .padding(.leading)
                Divider()
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(issue.tags, id: \.self){tag in
                            TagComponent(tag: tag)
                        }
                    }
                }
                .padding([.leading, .trailing])
                Text("\(issue.content)")
                    .padding()
                ForEach(issue.relatedContacts, id: \.self){ contact in
                    NavigationLink(destination: ContactDetailView(contact: contact)){
                        Label("\(contact.name)", systemImage: "person.fill")
                    }
                }
            }
        }
    }
}

struct IssueDetailView_Previews: PreviewProvider {
    static var previews: some View {
        IssueDetailView(issue: IssueExapmles().issues[1])
    }
}
