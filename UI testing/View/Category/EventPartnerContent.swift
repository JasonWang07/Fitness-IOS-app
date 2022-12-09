//
//  EventPartnerContent.swift
//  UI testing
//
//  Created by Jason Wang on 2/12/22.
//

import SwiftUI

struct EventPartnerContent: View {
    var someEventParter = EventPartnerData().self
    let shape = RoundedRectangle(cornerRadius: 30)
    
    var body: some View {
        VStack{
        List(someEventParter.eventpartners) { eventpartner in
                EventPartnerElement(eventpartner: eventpartner)
            
            join_button}
        }.ignoresSafeArea(edges: .top)
    }
    
    var join_button: some View{
        ZStack{
            shape.foregroundColor(.green)
            Text("Join")
        }
    }
}

struct EventPartnerElement: View{
    var eventpartner: EventPartner
    
    var body: some View {
        VStack(spacing:0){
            
            //日後改switch
            
            if eventpartner.id == 1001{
                Text("Badminton")
            }
            else if eventpartner.id == 1002{
                Text("Tennis")
            }
            else if eventpartner.id == 1003{
                Text("Baseball")
            }
            else if eventpartner.id == 2001{
                Text("Aerobic")
            }
            else if eventpartner.id == 2002{
                Text("Anaerobic")
            }
            else if eventpartner.id == 3001{
                Text("Camping")
            }
            else if eventpartner.id == 3002{
                Text("Rock climbing")
            }
            else if eventpartner.id == 4001{
                Text("Surfing")
            }
            else if eventpartner.id == 4002{
                Text("SUP")
            }
            else if eventpartner.id == 4003{
                Text("Yoga")
            }
            Text("[\(eventpartner.name)]")
                
                HStack{
                    Text(eventpartner.date).fontWeight(.semibold)
                    Text(eventpartner.time)
                    Spacer()
                    Text("join: \(eventpartner.current_participants) / \(eventpartner.desired_paricipants)")
                }.padding()
                MapView(coordinate: eventpartner.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)
                VStack{
                    Text("")
                
                }
    
                HStack{
                    eventpartner.image
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                                    .overlay {
                                        Circle().stroke(.black, lineWidth: 4)
                                    }
                    
                    VStack(alignment: .leading){
                        Text(eventpartner.host)
                        Text(eventpartner.host_id)
                    }
                    Spacer()
                }
            VStack{
                Text("")
                Divider()
                Text(eventpartner.description)
            }
        }.padding()
        }
    }


struct EventPartnerContent_Previews: PreviewProvider {
    static var previews: some View {
        EventPartnerContent()
    }
}
