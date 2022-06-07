//
//  ContentView.swift
//  spotifyColne
//
//  Created by Ketan Aggarwal on 22/05/22.
//

import SwiftUI

extension Color {
  init(_ hex: UInt, alpha: Double = 1) {
    self.init(
      .sRGB,
      red: Double((hex >> 16) & 0xFF) / 255,
      green: Double((hex >> 8) & 0xFF) / 255,
      blue: Double(hex & 0xFF) / 255,
      opacity: alpha
    )
  }
}

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .topLeading){
            LinearGradient(gradient: Gradient(colors: [Color(0xFFe67e22, alpha: 0.8), Color(0xFF191919), Color(0xFF191919), Color(0xFF191919), Color(0xFF191919), Color(0xFF191919), Color(0xFF191919)]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            VStack(){
                HStack(){
                    Text("Good Morning").font(.system(size: 25.0)).foregroundColor(.white).fontWeight(.bold).padding()
                    Spacer()
                    Image(systemName: "bell").foregroundColor(.white).padding([.bottom, .trailing, .top], 10).font(.system(size: 20.0))
                    Image(systemName: "clock").foregroundColor(.white).padding([.bottom, .trailing, .top], 10).font(.system(size: 20.0))
                    Image(systemName: "gear").foregroundColor(.white).padding([.bottom, .trailing, .top], 10).font(.system(size: 20.0))
                }.padding()
                VStack(){
                    HStack(){
                        playlist(playlistName: "Play List 1", playlistImage:
                                    "house.fill", fontSize: 15.0, iconSize: 25).frame(width: 180, height: 60)
                        Spacer()
                        playlist(playlistName: "On Repeat", playlistImage:
                                    "repeat.circle", fontSize: 15.0, iconSize: 25).frame(width: 180, height: 60)
                        
                    }
                    HStack(){
                        playlist(playlistName: "Liked Songs", playlistImage:
                                    "heart.fill", fontSize: 15.0, iconSize: 25).frame(width: 180, height: 60)
                        Spacer()
                        playlist(playlistName: "Play List 4", playlistImage:
                                    "repeat.circle", fontSize: 15.0, iconSize: 25).frame(width: 180, height: 60)
                        
                    }
                    HStack(){
                        playlist(playlistName: "Play List 5", playlistImage:
                                    "house.fill", fontSize: 15.0, iconSize: 25).frame(width: 180, height: 60)
                        Spacer()
                        playlist(playlistName: "Play List 6", playlistImage:
                                    "repeat.circle", fontSize: 15.0, iconSize: 25).frame(width: 180, height: 60)
                        
                    }
                }.padding()
                Text("Your top mixes").font(.system(size: 21.0)).fontWeight(.bold).foregroundColor(.white).frame(maxWidth: .infinity, alignment: .leading).padding()
                Spacer()
                HStack(){
                    Spacer()
                    Image(systemName: "house.fill").foregroundColor(.white).font(.system(size: 23.0))
                    Spacer()
                    Image(systemName: "magnifyingglass").foregroundColor(.white).font(.system(size: 23.0))
                    Spacer()
                    Image(systemName: "headphones").foregroundColor(.white).font(.system(size: 23.0))
                    Spacer()
                    Image(systemName: "person.circle").foregroundColor(.white).font(.system(size: 23.0))
                    Spacer()
                }.padding()
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}
