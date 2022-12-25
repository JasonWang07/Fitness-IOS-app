//
//  EventPartner.swift
//  UI testing
//
//  Created by Jason Wang on 2/12/22.
//

import Foundation
import SwiftUI
import CoreLocation


struct EventLogic{

    private (set) var eventpartners: Array<EventPartner>

    init(){
        eventpartners = Array<EventPartner>()
        eventpartners = dataload("eventPartnerData.json")
    }
    
    mutating func event_create(_ event: EventPartner){
        eventpartners.append(event)
    }
 
    struct EventPartner: Hashable, Codable, Identifiable {
        let id: Int
                //must exist to be identifiable
                // 日後這個id會是個問題  現在同類型運動只有一個ｐｏｓｔ 所以暫時先用id區分
        var title: String
        var category: String
        var description: String
        var host: String
        var host_id: String
        var date: String
        var time: String
        var current_participants: Int
        var desired_paricipants: Int
    //    var duration: Int
  
        private var coordinates: Coordinates
        var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude ,
                longitude: coordinates.longitude)
        }

        struct Coordinates: Hashable, Codable {
            var latitude: Double
            var longitude: Double
        }

        var image: Image {
            Image(host)
        }
    }
    
}









