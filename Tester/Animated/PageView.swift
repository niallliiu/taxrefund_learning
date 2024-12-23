//
//  PageView.swift
//  GB App
//
//  Created by Niall on 23/06/2024.
//

import SwiftUI
import RiveRuntime

struct PageView: View {
    
    let button = RiveViewModel(fileName: "button")
    
    var body: some View {
        
        
        NavigationStack{
            ZStack{
                Color.teal.opacity(0.3)
                    .ignoresSafeArea(.all)
                
                VStack(alignment: .leading, spacing: 16){
                    Text("Please select the issuer of your tax refund document.")
                        .customFont(.body)
                        .padding(.bottom, 6.0)
                        .opacity(0.7)
                        .frame(maxWidth: .infinity, alignment: .leading)
    
                    Text("If you are unsure, check the logo of your refund form.")
                        .customFont(.footnote)
                        .opacity(0.7)
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
