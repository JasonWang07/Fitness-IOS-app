//
//  EventPartnerHome.swift
//  UI testing
//
//  Created by Jason Wang on 2/12/22.
//

import SwiftUI

struct EventPartnerHome: View {
    var someEventParter = EventPartnerData().self  //呼叫ChatHome時 不需pass in para了
    var body: some View {
        NavigationView {
            VStack{
                Spacer(minLength: 180)
                HStack{
                    search
                    Spacer()
                    filter
                }.padding()
                
                List(someEventParter.eventpartners) { eventpartner in
                    NavigationLink {
                        EventPartnerContent()
                    } label: {
                        EventPartner_Block(eventpartner: eventpartner)
                    }
                        
                }
//                .navigationTitle("Event list")
                
                
                HStack{
                    Spacer()
                    add_event
                }.padding()
                
            }.ignoresSafeArea(edges: .top)
            
        }
    }
    var search : some View{
        Button(action:{
            //put the search link here
        }, label:{
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 25.0, height: 25.0)
        })
    }
    
    var filter : some View{
        Button(action:{
            //put the filter link here
        }, label:{
            Image(systemName: "line.3.horizontal.decrease.circle")
                .resizable()
                .frame(width: 25.0, height: 25.0)
        })
    }

    var add_event: some View{
        Button(action:{
            //put the posting link here
        }, label:{
            Image(systemName: "plus.circle.fill")
                .resizable()
                .frame(width: 50.0, height: 50.0)
        })
    }
}

struct EventPartner_Block: View{
    var eventpartner: EventPartner
    var body: some View{
        HStack{
            
            VStack(alignment: .leading){
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
                
                eventpartner.image
                    .resizable()
                    .frame(width: 60, height: 60)
                
                Text(eventpartner.host)
               
                
            }
            
            VStack(alignment: .leading){
                Text(eventpartner.name).font(.body).fontWeight(.semibold)
                Text(eventpartner.description)
                    .font(.subheadline)
            }
            Spacer()
            VStack(alignment: .trailing){
                Text(eventpartner.date).fontWeight(.semibold)
                Text(eventpartner.time)
                Text("join: \(eventpartner.current_participants) / \(eventpartner.desired_paricipants)")
            }
            
            
        }.padding()
        
    }
    
    var request : some View{
        Button(action:{
            //put the filter link here
        }, label:{
            Image(systemName: "arrow.forward.circle")
                .resizable()
                .frame(width: 25.0, height: 25.0)
        })
    }
    
}


struct EventPartnerHome_Previews: PreviewProvider {
    static var previews: some View {
        EventPartnerHome()
            .environmentObject(EventPartnerData())
    }
}
