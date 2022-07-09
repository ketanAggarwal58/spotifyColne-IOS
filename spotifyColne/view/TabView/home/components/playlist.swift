//
//  playlist.swift
//  spotifyColne
//
//  Created by Ketan Aggarwal on 04/06/22.
//

import SwiftUI

//extension Color {
//  init(_ hex: UInt, alpha: Double = 1) {
//    self.init(
//      .sRGB,
//      red: Double((hex >> 16) & 0xFF) / 255,
//      green: Double((hex >> 8) & 0xFF) / 255,
//      blue: Double(hex & 0xFF) / 255,
//      opacity: alpha
//    )
//  }
//}

struct playlist: View {
    
    var playlistName: String
    var playlistImage: String
    var fontSize: Double
    var iconSize: Double
//    var content: () -> Content
    
    init(playlistName: String, playlistImage: String, fontSize: Double, iconSize: Double){
        self.playlistImage = playlistImage
        self.playlistName = playlistName
        self.fontSize = fontSize
        self.iconSize = iconSize
    }
    
    var body: some View {
        HStack(){
            Image(systemName: playlistImage).font(.system(size: iconSize)).frame(width: 50, height: 50, alignment: .center).foregroundColor(.white)
            Text(playlistName).font(.system(size: fontSize)).foregroundColor(.white).padding()
        }.overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(0xFF1c1c1c), lineWidth: 1)).background(LinearGradient(gradient: Gradient(colors: [Color(0xFFfffff, alpha: 0.4), Color(0xFF191919, alpha: 0.4)]), startPoint: .topLeading, endPoint: .bottomLeading))
    }
}

struct playlist_Previews: PreviewProvider {
    static var previews: some View {
        playlist(playlistName: "On Repeat", playlistImage: "house.fill", fontSize: 10.0, iconSize: 20.0)
    }
}
