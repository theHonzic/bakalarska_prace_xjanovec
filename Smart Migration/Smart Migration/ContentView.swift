//
//  ContentView.swift
//  Smart Migration
//
//  Created by Jan Janovec on 01.10.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var currentTab: Int = 0
    var body: some View {
        TabView(selection: $currentTab){
            NavigationView{
                IssuesView()
                    .navigationTitle("Issues")
            }
                .tabItem{
                        Label("Issues", systemImage: "graduationcap")
                }.tag(0)
            
            NavigationView{
                ContactsView()
                    .navigationTitle("Contacts")
                
            }
                .tabItem{
                        Label("Contacts", systemImage: "person")
                }.tag(1)
            
            NavigationView{
                ToDoListView()
                    .navigationTitle("To do list")
            }
                .tabItem{
                        Label("To-Do", systemImage: "checklist")
                }.tag(2)
            
            NavigationView{
                ChatView()
                    .navigationTitle("Chat")
            }
                .tabItem{
                        Label("Chat", systemImage: "message")
                }.tag(3)
            
            NavigationView{
                InfoView()
                    .navigationBarHidden(true)
            }
                .tabItem{
                        Label("Info", systemImage: "info.circle")
                }.tag(4)
        }
    }
}

