//
//  ContentView.swift
//  Instagram UI
//
//  Created by Aditya Ranjan Jha on 03/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing: 0.0){
                    Header()
                    
                    Stories()
                    
                    Divider()
                    HStack {
                        VStack(alignment: .leading){
                            PostHeader()
                            Post()
                            Text("100 Likes")
                                .fontWeight(.bold)
                                .font(.footnote)
                                .frame(width: .infinity)
                                .padding(.horizontal,12)
                            Text("Thinking Out of The Box !!")
                                .font(.footnote)
                                .padding(.horizontal,12)
                            HStack{
                                Image("gojosatoru")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 45, height: 45)
                                    .cornerRadius(50)
                                    .padding(.horizontal)
                                Text("Add Comments...")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                            
                            
                            
                            PostHeader(img: "naruto",txt: "Naruto Uzumaki")
                            Post(postpic: "narutopic")
                            Text("500 Likes")
                                .fontWeight(.bold)
                                .font(.footnote)
                                .frame(width: .infinity)
                                .padding(.horizontal,12)
                            Text("Sweet Old Memories")
                                .font(.footnote)
                                .padding(.horizontal,12)
                            HStack{
                                Image("gojosatoru")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 45, height: 45)
                                    .cornerRadius(50)
                                    .padding(.horizontal)
                                Text("Add Comments...")
                                    .font(.caption)
                                    .foregroundColor(.secondary)
                            }
                            
                        }
                    }
                    
                    Spacer()
                }
            }
            VStack(spacing: 0.0){
                Divider()
                Bottombar()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack{
            Image("Logo dropdown")
            Spacer()
            HStack(spacing: 20){
                Image("Icons (3)")
                Image("Icons (1)")
            }
        }.padding()
    }
}

struct Story: View {
    var image: String = "gojosatoru"
    var name: String = "Gojo Satoru"
    var body: some View {
        VStack {
            VStack{
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 75,height: 75)
                    .cornerRadius(50)
            }.overlay{
                Circle()
                    .stroke(LinearGradient(colors: [.red,.orange,.purple,.red,.orange,.red], startPoint: .topLeading, endPoint:.bottomTrailing),lineWidth: 2.5)
                    .frame(width:85,height:85)
            }.frame(width: 90,height: 90)
            Text(name)
                .font(.caption)
        }
    }
}

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(spacing: 10.0){
                Story()
                Story(image: "gon", name: "Gon Freecss" )
                Story(image: "tanjiro", name: "Kamado Tanjiro" )
                Story(image: "naruto", name: "Naruto Uzumaki" )
            }
            Spacer()
        }.padding(.horizontal,8)
    }
}

struct PostHeader: View {
    var img: String="madara"
    var txt: String="Madara Uchiha"
    var body: some View {
        HStack {
            HStack{
                Image(img)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60,height: 60)
                    .cornerRadius(50)
                    .padding(.horizontal)
                Text(txt)
                    .fontWeight(.bold)
                
            }
            Spacer()
            Image("Icons (7)")
                .padding(.vertical,15)
                .padding(.horizontal,8)
        }
    }
}

struct Post: View {
    var postpic: String="madara_pic"
    var body: some View {
        VStack(spacing: 0.0){
            Image(postpic)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: .infinity)
            HStack{
                Image("Icons (3)")
                Image("Icons (1)")
                Image("Icons (9)")
                Spacer()
                Image("Icons (8)")
            }
            .padding(.horizontal,12)
            .padding(.vertical,9)
        }
    }
}

struct Bottombar: View {
    var body: some View {
        HStack{
            Image("Exclude")
                .frame(width: 50, height: 50)
            Spacer()
            Image("Icons (11)")
                .frame(width: 50, height: 50)
            Spacer()
            Image("Icons (5)")
                .frame(width: 50, height: 50)
            Spacer()
            Image("Menu")
                .frame(width: 50, height: 50)
            Spacer()
            Image("gojosatoru")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 40)
                .cornerRadius(50)
        }.padding()
    }
}
