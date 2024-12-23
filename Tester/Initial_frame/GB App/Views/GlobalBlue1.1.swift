//
//  GlobalBlue1.1.swift
//  GB App
//
//  Created by Niall on 24/06/2024.
//

import SwiftUI

struct GlobalBlue1_1: View {
    
    var body: some View {
    
        NavigationStack{
            ZStack{
                Color.teal.opacity(0.3)
                    .ignoresSafeArea(.all)
                
                VStack{
                    Text("Are you from Norway, Finland, Sweden or Denmark?")
                        .font(.title3).padding()
                    Text("Residency holder applies.")
                        .font(.caption)
                        .padding()
                    HStack{
                        
                        VStack{

                            NavigationLink(destination: GlobalBlue1_1()) {Text("Yes")}
                            
                        }
                        
                        VStack{
                            
                            NavigationLink(destination: GlobalBlue1_1()) {Text("No")}
                        }
                        
                    }
                    
                }
            }
        }
    }
}


#Preview {
    GlobalBlue1_1()
}
