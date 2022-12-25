//
//  UI_testingApp.swift
//  UI testing
//
//  Created by Jason Wang on 28/11/22.
//

import SwiftUI

@main
struct UI_testingApp: App {
//    @StateObject private var sportData = SportData()
    @StateObject var dataHolder = DateHolder()
//    @StateObject private var chatData = ChatData()
//    @StateObject private var profileData = ProfileData()
//    @StateObject private var eventpartnerData = EventPartnerData()
    
    let game = CenterViewModel()
    
    var body: some Scene {
        WindowGroup {

            ContentView(viewmodel: game)
//                .environmentObject(sportData)
                .environmentObject(dataHolder)
//                .environmentObject(chatData)
//                .environmentObject(profileData)
//               .environmentObject(eventpartnerData)
        }
    }
}
