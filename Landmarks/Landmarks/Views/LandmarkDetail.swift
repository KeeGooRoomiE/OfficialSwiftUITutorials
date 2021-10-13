//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Ксандер Гусаров on 13.10.2021.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .ignoresSafeArea(edges: .all)
            CircleImage(image: landmark.image)
                .padding(.bottom, -130.0)
                .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/-130.0/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.blue)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
            
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
