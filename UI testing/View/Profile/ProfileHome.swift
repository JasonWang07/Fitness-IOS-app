//
//  Profile.swift
//  UI testing
//
//  Created by Jason Wang on 29/11/22.
//

import SwiftUI

struct ProfileHome: View {

    var someProfile = ProfileData().self  //呼叫ProfileHome時 不需pass in para了
    var body: some View {
                VStack(spacing: 1){
                    Spacer(minLength: 40)
                HStack{
                    setting
                    Spacer()
                }.padding()
                List(someProfile.profiles) {
                    profile in Profile_Block(profile: profile)
                }
                .padding()
                    
                    VStack(alignment: .leading, spacing:2){
                        Text("Upcoming").font(.title3)
                        Divider()
                        RoundedRectangle(cornerRadius: 5).foregroundColor(.gray)
                    }.padding()
                    
                    VStack(alignment: .leading, spacing:2){
                        Text("Past").font(.title3)
                        Divider()
                        RoundedRectangle(cornerRadius: 5).foregroundColor(.gray)
                    }.padding()
                    
                    HStack{
                        Spacer()
                        post
                    }.padding()
            }.ignoresSafeArea(edges: .top)
}
    
    var setting : some View{
        Button(action:{
            //put the setting link here
        }, label:{
            Image(systemName: "gearshape")
                .resizable()
                .frame(width: 30.0, height: 30.0)
        })
    }
    
    var post: some View{
        Button(action:{
            //put the posting link here
        }, label:{
            Image(systemName: "plus.circle.fill")
                .resizable()
                .frame(width: 50.0, height: 50.0)
        })
    }
}

struct Profile_Block: View{
    var profile: Profile
    var body: some View{
        HStack{
            profile.image
                .resizable()
                .frame(width: 80, height: 80)
            
            VStack(alignment: .leading, spacing: 3){
                HStack{
                    Text(profile.name).font(.title2)
                    Text("@\(profile.user_id)").font(.body)
                }
                Divider()
                HStack{
                    VStack(alignment: .trailing){
                        Text("Hosted")
                        Text("\(profile.event_host_num)")
                    }
                    VStack(alignment: .trailing){
                        Text("Joined")
                        Text("\(profile.event_join_num)")
                    }
                    VStack(alignment: .trailing){
                        Text("Followers")
                        Text("\(profile.followers)")
                    }
                }
                if profile.coach == true
                {coach_icon}
                
            }
            
        }
        
    }
    
    var coach_icon : some View{
        Button(action:{
            //put the coach certificate link here
        }, label:{
            Image(systemName: "graduationcap")
                .resizable()
                .frame(width: 20.0, height: 20.0)
        })
        
    }
    
}

struct Profile_upcoming_event: View{
    var body: some View{
        ScrollView{
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem(),]){
//                ForEach(element_list[0..<elementCount], id: \.self){
//                    element in CardView(content:element).aspectRatio(2/3, contentMode: .fit)
                }
            }.padding(.all)
        }
    }


struct Profile_past_event{
    var body: some View{
        ScrollView{
            LazyVGrid(columns: [GridItem(), GridItem(), GridItem(),]){
//                ForEach(element_list[0..<elementCount], id: \.self){
//                    element in CardView(content:element).aspectRatio(2/3, contentMode: .fit)
                }
            }.padding(.all)
    }
}



struct ProfileHome_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHome()
    }
}
