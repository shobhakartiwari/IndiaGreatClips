//
//  ContentView.swift
//  IndiaGreatClips
//
//  Created by Shobhakar Tiwari on 11/15/23.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            HomeView().tabItem {
                Label("", systemImage: "house")
            }
            
            Text("second View").tabItem {
                Label("", systemImage: "magnifyingglass")
            }
            
            ProfileView().tabItem {
                Label("", systemImage: "person.crop.circle.badge.questionmark")
            }
        }
    }
}

#Preview {
    ContentView()
}

//Profile View
struct ProfileView: View {
    var body: some View {
        List {
            Section {
                VStack{
                    Text("Account")
                    Text("Shobhakar Tiwari")
                }
            } header: {
                Text("Account")
            }
            
            Section {
                VStack{
                    HStack{
                        Image(systemName: "person.crop.circle.badge.checkmark")
                        Text("Personal Info")
                    }
                    HStack{
                        Image(systemName: "star")
                        Text("Favorites")
                    }
                }
            } header: {
                Text("")
            }
            
            Section {
                VStack(spacing: 20){
                    HStack{
                        Image(systemName: "questionmark.circle")
                        Text("Communication Settings")
                    }.padding(.leading, 10)
                    HStack{
                        Image(systemName: "questionmark.circle")
                        Text("Display")
                    }
                }
            } header: {
                Text("PREFERENCES")
            }
            
            Section {
                VStack{
                    HStack{
                        Image(systemName: "questionmark.circle")
                        Text("Help")
                    }
                    HStack{
                        Image(systemName: "accessibility")
                        Text("Accessibility Notice")
                    }
                    HStack{
                        Image(systemName: "doc")
                        Text("Legal and Privacy")
                    }
                }
            } header: {
                Text("HELP & POLICIES")
            }
        }
    }
}
