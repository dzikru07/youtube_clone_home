//
//  ContentView.swift
//  youtube_clone_ios
//
//  Created by dzikru arya on 12/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            TabView{
                Home()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "paperplane.fill")
                        Text("Beranda")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "tray.fill")
                        Text("Beranda")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "envelope.fill")
                        Text("Beranda")
                    }
                
                Home()
                    .tabItem {
                        Image(systemName: "play.rectangle.fill")
                        Text("Beranda")
                    }
            }.accentColor(.red)
        }
    }
}

#Preview {
    ContentView()
}

struct Home:View {
    var body: some View {

        NavigationStack {
            
           ContentHome()
                .toolbar {
                    ToolbarItemGroup(placement: .primaryAction) {
                        HStack{
                            Button {
                                
                            } label: {
                                Image(systemName: "tray.full")
                                    .foregroundColor(.gray)
                            }
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "video.fill")
                                    .foregroundColor(.gray)
                            }
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                            }
                            
                            Button {
                                print("About tapped!")
                            } label : {
                                Image("profile")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                    
                                
                            }
                        }
                    }
                    
                    
                    

                    ToolbarItemGroup(placement: .navigation) {
                        Button {
                            print("About tapped!")
                        } label : {
                            Image("youtube")
                                .resizable()
                                .frame(width: 90, height: 24)
                                
                            
                        }
                    
                    }
                }.padding(.top, -20)
        }
    }
}

struct ContentHome : View {
    var body: some View {
        List{
            CardContent(imageConten: "content1", titleContent: "PewdiePie new journey #4", proflieUser: "profile", descriptionContent: "play game with my brother", duration: "10:45")
            
            CardContent(imageConten: "content2", titleContent: "PewdiePie new journey #4", proflieUser: "profile", descriptionContent: "play game with my brother", duration: "10:45")
            
            CardContent(imageConten: "content1", titleContent: "PewdiePie new journey #4", proflieUser: "profile", descriptionContent: "play game with my brother", duration: "10:45")
            
            CardContent(imageConten: "content2", titleContent: "PewdiePie new journey #4", proflieUser: "profile", descriptionContent: "play game with my brother", duration: "10:45")
            
        }.scrollContentBackground(.hidden)
    }
}

struct CardContent: View {
    var imageConten: String
    var titleContent: String
    var proflieUser: String
    var descriptionContent: String
    var duration:String
    
    var body: some View {
        VStack(){
            ZStack(alignment: .bottomTrailing){
                Image(imageConten)
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: .infinity)
                                    .background(Color.green)
                
                
                Text(duration)
                    .padding(.all, 5)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
            
            HStack(spacing : 20){
                Image(proflieUser)
                    .resizable()
                    .frame(width: 35, height: 35)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading
                ){
                    Text(titleContent).font(.headline)
                    Text(descriptionContent).font(.caption)
                }
                
                Image(systemName: "list.bullet")
            }
            Spacer()
        }.background(Color.white)
    }
}
