//
//  PlaceDetailView.swift
//  PlacesHP
//
//  Created by Héctor Pablo González on 18/08/25.
//

import SwiftUI

struct PlaceDetailView: View {
    let place : Place
    var body: some View {
        VStack {
            
            Image(place.imageName[0])
                .resizable()
                .scaledToFit()
            Text(place.name)
                .font(.title)
                .fontWeight(.bold)
                .fontDesign(.rounded)
            Text(place.description)
                .multilineTextAlignment(.leading)
                .padding()
            Spacer()
            Link(destination: URL(string: place.videoURL)!) {
                HStack {
                    Image(systemName: "play.circle")
                    Text("Open Video")
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            
            
        }
    }
}

#Preview {
    PlaceDetailView(place: Place(name: "Chipinque", title: "Chipinque", description: "Desc", videoURL: "video", imageName: ["Chipinque"]))
}
