//
//  ContentView.swift
//  GB App
//
//  Created by Niall on 23/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.teal.opacity(0.3)
                    .ignoresSafeArea(.all)
                VStack{
                    Text("Enjoy Oslo")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                    Text("with Tax Free Shopping")
                        .font(.title)
                        .fontWeight(.ultraLight)
            
                    NavigationLink(destination: PageView()) {Text("Let's Go!")}.buttonStyle(.borderedProminent).padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
