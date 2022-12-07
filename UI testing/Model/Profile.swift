//
//  Profile.swift
//  UI testing
//
//  Created by Jason Wang on 1/12/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Profile: Hashable, Codable, Identifiable {
    let id: Int //must exist to be identifiable
    var user_id: String
    var name: String
    var event_host_num: Int
    var event_join_num: Int
    var followers: Int
    var coach: Bool


    private var imageName: String
    var image: Image {
        Image(imageName)
    }

}
