//
//  Chat.swift
//  UI testing
//
//  Created by Jason Wang on 29/11/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct ChatLogic{
    
    private (set) var chats: Array<Chat>

    init(){
        chats = Array<Chat>()
        chats = dataload("chatData.json")
    }
    
    struct Chat: Hashable, Codable, Identifiable {
        let id: Int //must exist to be identifiable
        var user_id: String
        var name: String
        var last_msg: String
        var unread_msg_num: Int
        var msg_time: String

        private var imageName: String
        var image: Image {
            Image(imageName)
        }

    }
}
