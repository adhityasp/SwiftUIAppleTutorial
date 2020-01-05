//
//  ContentView.swift
//  BasicSwiftUI
//
//  Created by Adhitya Surya Pratama on 05/01/20.
//  Copyright © 2020 Adhitya Surya Pratama. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            mapView()
            circleImage()
            content()
            
            Spacer()
        }
    }
    
    private func mapView() -> some View {
        MapView()
            .frame(height: 300)
            .edgesIgnoringSafeArea([.top])
    }
    
    private func circleImage() -> some View {
        CircleImage()
            .offset(y: -100)
            .padding([.bottom], -100)
    }
    
    private func content() -> some View {
        VStack(alignment: .leading) {
            Text("My First SwiftUI")
                .font(.title)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .lineLimit(2)
            HStack {
                Text("- Adhitya SP - ")
                    .font(.subheadline)
                Spacer()
                Text("Indonesia")
                    .font(.subheadline)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

