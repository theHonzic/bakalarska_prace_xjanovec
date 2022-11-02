//
//  ContentView.swift
//  Smart Migration
//
//  Created by Jan Janovec on 01.10.2022.
//

import SwiftUI

enum TabTitle{
    case Issues, Contacts, ToDo, Chat, Info
}

struct ContentView: View {
    @State private var currentTab: TabTitle = .Issues

    var body: some View {
        NavigationView{
            TabView(selection: $currentTab){
                IssuesView()
                    .tabItem{
                        Label("Issues", systemImage: "graduationcap")
                    }.tag(TabTitle.Issues)
                
                ContactsView()
                    .tabItem{
                        Label("Contacts", systemImage: "person")
                    }.tag(TabTitle.Contacts)
                
                ToDoListView()
                    .tabItem{
                        Label("To-Do", systemImage: "checklist")
                    }.tag(TabTitle.ToDo)
                
                ChatView()
                    .tabItem{
                        Label("Chat", systemImage: "message")
                    }.tag(TabTitle.Chat)
                
                InfoView()
                    .tabItem{
                        Label("Info", systemImage: "info.circle")
                    }.tag(TabTitle.Info)
            }
            .navigationBarTitle(returnNavBarTitle(tabSelection: self.currentTab))
            
        }
    }
    
    func returnNavBarTitle(tabSelection: TabTitle) -> String{
        switch tabSelection{
        case .Issues: return "Issues"
        case .Contacts: return "Contacts"
        case .ToDo: return "To-Do List"
        case .Chat: return "Chat"
        case .Info: return "Info"
        }
    }
}

