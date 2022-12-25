//
//  EventCreate.swift
//  UI testing
//
//  Created by Jason Wang on 21/12/22.
//

import SwiftUI


struct EventCreate: View {
        
    var body: some View {

            List{
                sport_type()
                event_title()
                event_person()
                event_date()
                event_time()
                event_location()
                event_description()
                create_button
            }
            
    }
}



struct sport_type: View{
    @State private (set) var sport = ""
    
    var body: some View {
        TextField("Sport type", text: $sport, prompt: Text("Sport type"))
            .padding()
            .overlay(textFieldBorder)
            .padding()
    }
    var textFieldBorder: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.blue, lineWidth: 5)
    }
    
}

struct event_title: View{
    @State private var event_title = ""
    
    var body: some View {
        TextField("Event title", text: $event_title, prompt: Text("Event title"))
            .padding()
            .overlay(textFieldBorder)
            .padding()
    }
    var textFieldBorder: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.blue, lineWidth: 5)
    }
    
}

struct event_person: View{
    @State private var event_person = ""
    
    var body: some View {
        TextField("Event participants", text: $event_person, prompt: Text("Event participants"))
            .padding()
            .overlay(textFieldBorder)
            .padding()
    }
    var textFieldBorder: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.blue, lineWidth: 5)
    }
    
}

struct event_date: View{
    @State private var event_date = ""
    
    var body: some View {
        TextField("Event date", text: $event_date, prompt: Text("Event date"))
            .padding()
            .overlay(textFieldBorder)
            .padding()
    }
    var textFieldBorder: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.blue, lineWidth: 5)
    }
    
}

struct event_time: View{
    @State private var event_time = ""
    
    var body: some View {
        TextField("Event time", text: $event_time, prompt: Text("Event time"))
            .padding()
            .overlay(textFieldBorder)
            .padding()
    }
    var textFieldBorder: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.blue, lineWidth: 5)
    }
    
}

struct event_description: View{
    @State private var event_description = ""
    
    var body: some View {
        TextField("Event description", text: $event_description, prompt: Text("Event discription"))
            .padding()
            .overlay(textFieldBorder)
            .padding()
    }
    var textFieldBorder: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.blue, lineWidth: 5)
    }
    
}

struct event_location: View{
    @State private var event_location = ""
    
    var body: some View {
        TextField("Event location", text: $event_location, prompt: Text("Event location"))
            .padding()
            .overlay(textFieldBorder)
            .padding()
    }
    var textFieldBorder: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.blue, lineWidth: 5)
    }
}

var create_button : some View{
    Button(action:{
//        let sport_type = sport_type.self()
//        let event_title = event_title.self()
//        let event_person = event_person.self()
//        let event_date = event_date.self()
//        let event_time = event_time.self()
//        let event_description = event_description.self()
//        let event_location = event_location.self()
//        let new_event = EventLogic.EventPartner(id:101,
//                                                name: event_title,
//                                                category: sport_type,
//                                                description: event_description,
//                                                host: "Test",
//                                                host_id: "Test01",
//                                                date: event_date,
//                                                time: event_time,
//                                                current_participants: 0,
//                                                desired_paricipants: event_person)
//
//        CenterViewModel.event_create()
        
        
    }, label:{
        ZStack{
            RoundedRectangle(cornerRadius: 30).foregroundColor(.green)
            Text("Create!")
        }
    })
}




struct EventCreate_Previews: PreviewProvider {
    static var previews: some View {
        EventCreate()
    }
}

