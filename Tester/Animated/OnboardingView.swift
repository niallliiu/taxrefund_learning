//
//  OnboardingView.swift
//  Animated
//
//  Created by Meng To on 2022-05-12.
//

import SwiftUI
import RiveRuntime

struct OnboardingView: View {
    let button = RiveViewModel(fileName: "button")
    @State var showModal = false
    
    var body: some View {
        ZStack {
            background
            
            content
                .offset(y: showModal ? -50 : 0)
            
            if showModal {
                PageView()
                    .transition(.move(edge: .top).combined(with: .opacity))
                    .overlay(Button {
                        withAnimation(.spring()) {
                            showModal = false
                        }
                    } label: {
                        Image(systemName: "xmark")
                            .frame(width: 36, height: 36)
                            .foregroundColor(.black)
                            .mask(Circle())
                        .shadow(color: Color("Shadow").opacity(0.3), radius: 5,x: 0,y: 3)
                    }
                        .frame(maxHeight: .infinity, alignment: .bottom)
                     )
                    .zIndex(1)
            }
        
        }
    }
    
    var content: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            Text("Enjoy Oslo Tax Free")
                .font(.custom("Poppins Bold", size: 60, relativeTo: .largeTitle))
                .frame(width: 350, alignment: .leading)
            
            Text("Your ultimate guide to hassle-free tax refunds in Oslo. Find the best spots to process your refund all in one place for a seamless experience.")
                .customFont(.body)
                .opacity(0.7)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            button.view()
                .frame(width: 236, height: 64)
                .overlay(
                    Label("Welcome to Oslo", systemImage: "arrow.forward")
                        .offset(x: 4, y: 4)
                        .font(.headline)
                )
                .background(
                    Color.black
                        .cornerRadius(30)
                        .blur(radius: 10)
                        .opacity(0.3)
                        .offset(y: 10)
                )
                .onTapGesture {
                    button.play(animationName: "active")
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                        withAnimation(.spring()) {
                            showModal = true
                        }
                    }
            }
            
            Text("All associated with Global Blue are registered trademarks of Global Blue or its affiliates; all associated with Planet System are registered trademarks of Planet or its affiliates; all associated with Pie System are registered trademarks of Pie System or its affiliates.")
                .customFont(.footnote)
                .opacity(0.7)
            Text("© 2024 Niall H.C. Liu. All rights reserved.")
                .customFont(.footnote)
                .opacity(0.7)
        }
        .padding(40)
        .padding(.top, 40)
        
        
    }
    
    var background: some View {
        RiveViewModel(fileName: "shapes").view()
            .ignoresSafeArea()
            .blur(radius: 30)
            .background(
                Image("Spline")
                    .blur(radius: 50)
                    .offset(x: 200, y: 100)
        )
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
