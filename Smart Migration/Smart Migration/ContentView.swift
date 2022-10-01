//
//  ContentView.swift
//  Smart Migration
//
//  Created by Jan Janovec on 01.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            IssuesView()
                .tabItem{
                        Label("Issues", systemImage: "graduationcap")
                    }
            
            ContactsView()
                .tabItem{
                        Label("Contacts", systemImage: "person")
                    }
            
            ToDoListView()
                .tabItem{
                        Label("To-Do", systemImage: "checklist")
                    }
            
            ChatView()
                .tabItem{
                        Label("Chat", systemImage: "message")
                    }
            
            InfoView()
                .tabItem{
                        Label("Info", systemImage: "info.circle")
                    }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
