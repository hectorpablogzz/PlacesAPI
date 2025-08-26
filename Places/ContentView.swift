//
//  ContentView.swift
//  Places
//
//  Created by Elvia Rosas on 18/08/25.
//

import SwiftUI


struct ContentView: View {
    
    @State private var placeVM = PlaceViewModel()

    
    var body: some View {
        
        NavigationStack {
            Text("Monterrey Travel Guide")
                .font(.title)
                .fontWeight(.bold)
                .fontDesign(.rounded)
            
            VStack {
                
                if(placeVM.isLoading) {
                    VStack {
                        Text("Loading...")
                        ProgressView()
                    }
                    .padding(30)
                }
                if(placeVM.hasError) {
                    Text("Error loading content.")
                        .foregroundStyle(Color.red)
                        .padding(30)
                }

                List {
                    ForEach(placeVM.arrPlaces) { item in
                        
                        NavigationLink {
                            PlaceDetailView(place: item)
                        } label: {
                            PlaceRowView(place: item)
                        }

                    }
                }
            }
            
        }
        
    }
}

#Preview {
    ContentView()
}
