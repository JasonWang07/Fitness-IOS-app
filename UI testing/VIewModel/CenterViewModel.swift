//
//  EventPartnerData.swift
//  UI testing
//
//  Created by Jason Wang on 2/12/22.
//

import Foundation
import Combine

class CenterViewModel: ObservableObject {
//    @Published var eventpartners: [EventPartner] = eventpartnerload("eventPartnerData.json")
    

    @Published private var category_model: SportLogic = SportLogic()    //class' var all have to be initialized
        
    var sports: Array<SportLogic.Sport>{
        return category_model.sports
    }
    
    @Published private var event_model: EventLogic = EventLogic()    //class' var all have to be initialized
    
    var eventpartners: Array<EventLogic.EventPartner>{
        return event_model.eventpartners
    }
    
    func event_create(_ event: EventLogic.EventPartner){
        event_model.event_create(event)
    }
    
    
    @Published private var chat_model: ChatLogic = ChatLogic()    //class' var all have to be initialized
    
    var chats: Array<ChatLogic.Chat>{
        return chat_model.chats
    }
    
    
    @Published private var profile_model: ProfileLogic = ProfileLogic()    //class' var all have to be initialized
    
    var profiles: Array<ProfileLogic.Profile>{
        return profile_model.profiles
    }
    
}
    
class DateHolder: ObservableObject
{
    @Published var date = Date() //assign today's date
}



func dataload<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}























