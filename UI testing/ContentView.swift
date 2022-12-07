//
//  ContentView.swift
//  UI testing
//
//  Created by Jason Wang on 28/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .home

    enum Tab {
        case home
        case schedule
        case chat
        case profile
    }

    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(Tab.home)
// click icon in home then landmarklist
 //           LandmarkList()
  //              .tabItem {
  //                  Label("Chat", systemImage: "list.bullet")
   //             }
   //             .tag(Tab.chat)
            ScheduleHome()
                .tabItem {
                    Label("Schedule", systemImage: "calendar")
                }
                .tag(Tab.schedule)
            ChatHome()
                .tabItem {
                    Label("Chat", systemImage: "message")
                }
                .tag(Tab.chat)
            ProfileHome()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
                .tag(Tab.profile)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(SportData())
    }
}


