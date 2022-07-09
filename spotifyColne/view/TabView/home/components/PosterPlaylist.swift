//
//  PosterPlaylist.swift
//  spotifyColne
//
//  Created by Ketan Aggarwal on 12/06/22.
//

import SwiftUI

struct PosterPlaylist: View {
    
    var width: Double
    var height: Double
    var mixName: String
    var imageName: String
    var textSize: Double

    init(width: Double, height: Double, mixName: String, imageName:String, textSize: Double){
        self.width = width
        self.height = height
        self.mixName = mixName
        self.imageName = imageName
        self.textSize = textSize
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading){
            Rectangle().fill(.gray)
                .frame(width: width, height: height)
            Image(imageName).resizable().scaledToFit()
                .frame(width: width, height: height)
            Rectangle().fill(.white).opacity(0.1).frame(width: width, height: height)
            Text(mixName).font(.system(size: textSize, weight: .bold) ).foregroundColor(.white).italic().padding()
        }
    }
}

struct PosterPlaylist_Previews: PreviewProvider {
    static var previews: some View {
        PosterPlaylist(width: 200, height: 200, mixName: "Text", imageName: "poster-1", textSize: 20)
    }
}
