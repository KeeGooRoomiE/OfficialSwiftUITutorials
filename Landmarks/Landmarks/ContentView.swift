//
//  ContentView.swift
//  Landmarks
//
//  Created by Ксандер Гусаров on 13.10.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            CircleImage()
                .padding(.bottom, -130.0)
                .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/-130.0/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.blue)
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Joshua Tree National Park"/*@END_MENU_TOKEN@*/)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Description goes here")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
