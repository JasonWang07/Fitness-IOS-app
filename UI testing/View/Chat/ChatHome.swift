//
//  Chat.swift
//  UI testing
//
//  Created by Jason Wang on 29/11/22.
//

import SwiftUI

struct ChatHome: View {
    var someChat = ChatData().self  //呼叫ChatHome時 不需pass in para了
    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    search
                    Spacer()
                    add_contact
                }.padding()
                List(someChat.chats) { chat in
                    NavigationLink {
                        ChatContent()
                    } label: {
                        Chat_Block(chat: chat)
                    }
                }
                .padding()
                .navigationTitle("Contacts")
            }
        }
    }
    var search : some View{
        Button(action:{
            //put the searching link here
        }, label:{
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 25.0, height: 25.0)
        })
    }
    
    var add_contact : some View{
        Button(action:{
            //put the adding contact link here
        }, label:{
            Image(systemName: "plus.circle")
                .resizable()
                .frame(width: 30.0, height: 30.0)
        })
    }
}



//struct Chat_Row: View{
//    var chat_row: [Chat]
//
//    var body: some View{
//    VStack(alignment: .leading){
//
//            HStack{
//                ForEach(chat_row[0..<chat_row.count], id: \.self){
//                    item in Chat_Block(chat: item)
//                }
//            }
//        }
//    }
//}

struct Chat_Block: View{
    var chat: Chat
    var body: some View{
        HStack{
            chat.image
                .resizable()
                .frame(width: 60, height: 60)
            
            VStack(alignment: .leading){
                Text(chat.name).font(.title).fontWeight(.bold)
                Text(chat.last_msg).foregroundColor(.gray)
            }
            
            Spacer()
            
            VStack{
                Text(chat.msg_time)
                ZStack{
                    Circle()
                        .frame(width: 20.0, height: 20.0)
                        .foregroundColor(.green)
                    Text("\(chat.unread_msg_num)")
                }
            }
        }.padding()
        
    }
}


struct ChatHome_Previews: PreviewProvider {
    
    static var chats = ChatData().chats
    
    static var previews: some View {
//        Group {
//            Chat_Block(chat: chats[0])
//            Chat_Block(chat: chats[1])
//        }
        ChatHome()
//        .previewLayout(.fixed(width: 300, height: 70))
    }
}
