//
//  PageView.swift
//  GB App
//
//  Created by Niall on 23/06/2024.
//

import SwiftUI


struct PageView: View {
    
    var body: some View {
        
        
        NavigationStack{
            ZStack{
                Color.teal.opacity(0.3)
                    .ignoresSafeArea(.all)
                
                VStack{
                    Text("Please select the issuer of your tax refund document.")
                        .font(.title3).padding()
                    Text("If you are unsure, check the logo of your refund form.")
                        .font(.caption)
                        .padding()
                    HStack{
                        
                        VStack{
                            
                            NavigationLink(destination: PageView()) {Image("gblogo").resizable().frame(width: 100, height: 100).cornerRadius(/*@START_MENU_TOKEN@*/22.0/*@END_MENU_TOKEN@*/)}
                            
                            NavigationLink(destination: PageView()) {Text("Global Blue")}
                            
                        }
                        
                        VStack{
                            NavigationLink(destination: PageView()) {Image("pielogo").resizable().frame(width: 100, height: 100).cornerRadius(/*@START_MENU_TOKEN@*/22.0/*@END_MENU_TOKEN@*/)}
                            
                            NavigationLink(destination: PageView()) {Text("Pie System")}
                        }
                        
                        VStack{
                            
                            NavigationLink(destination: PageView()) {Image("planetlogo").resizable().frame(width: 100, height: 100).cornerRadius(/*@START_MENU_TOKEN@*/22.0/*@END_MENU_TOKEN@*/)}
                            
                            NavigationLink(destination: PageView()) {Text(".Planet")}
                            
                        }
                        
                    }
                    
                }
            }
        }
    }
}

#Preview {
    PageView()
}
