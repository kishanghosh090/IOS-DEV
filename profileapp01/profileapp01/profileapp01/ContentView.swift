//
//  ContentView.swift
//  profileapp01
//
//  Created by kishan rana ghosh on 09/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background").resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){
                
                VStack(alignment: .center,spacing: 20){
                    Image("myImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180,height: 180,alignment: .top)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    Text("Kishan Rana Ghosh")
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .foregroundStyle(Color(.white))
                        .font(.system(.largeTitle))
                        .shadow(radius: 5)
                    Text("IOS | Full Stack Developer")
                        .font(.body)
                        .foregroundStyle(Color(.white))
                    HStack(spacing: 40, ){
                        Image(systemName: "heart.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "network")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "message.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: "phone.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        
                    }.foregroundStyle(Color(.white))
                        .frame(width: 250,height: 50,alignment: .center)
                        .shadow(color: .pink, radius: 5, y: 8)
                }
//                Spacer()
                VStack(alignment: .center, spacing: 30){
                    RoundedRectangle(cornerRadius: 120)
                        .frame(width: 200, height: 50, alignment: .center)
                        .foregroundStyle(Color(.white))
                        .shadow(color: .pink, radius: 5, y: 8)
                        .overlay(
                            Text("Follow")
                                .fontWeight(.bold)
                                .foregroundStyle(Color(.pink))
                                .font(.system(size: 30))
                        )
                    HStack(alignment: .center, spacing: 60){
                        VStack{
                            Text("1001")
                                .font(.title)
                                .foregroundStyle(Color(.pink))
                            Text("Appreciations")
                                .font(.caption)
                                .foregroundStyle(Color(.gray))
                        }
                        VStack{
                            Text("222")
                                .font(.title)
                                .foregroundStyle(Color(.pink))
                            Text("Appreciations")
                                .font(.caption)
                                .foregroundStyle(Color(.gray))
                        }
                        VStack{
                            Text("222")
                                .font(.title)
                                .foregroundStyle(Color(.pink))
                            Text("Appreciations")
                                .font(.caption)
                                .foregroundStyle(Color(.gray))
                        }

                    }
                    Text("About You")
                        .font(.system(size: 30))
                        .font(.system(.caption))
                    Text("I'm an iOS Frontend developer. Welcome to the series of iOS project")
                        .font(.system(.body))
                        .foregroundStyle(Color(.darkText))
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .opacity(0.7)
                }.padding()
            }
        }
    }
}

//#Preview {
//    ContentView()
//}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
