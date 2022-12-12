//
//  IssuesListView.swift
//  Smart Migration
//
//  Created by Jan Janovec on 01.10.2022.
//

import SwiftUI

struct IssuesListView: View {
    @StateObject var viewModel = IssuesViewModel()
    
    var body: some View {
        VStack{
            List{
                ForEach(viewModel.issues, id: \.self){item in
                    NavigationLink(destination: IssueDetailView(issue: item)){
                        Text("\(item.title)")
                    }
                }
            }
        }
        
    }
}

struct IssuesListView_Previews: PreviewProvider {
    static var previews: some View {
        IssuesListView()
    }
}
