//
//  SplashScreenView.swift
//  Instagram UI
//
//  Created by Aditya Ranjan Jha on 03/04/23.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if isActive{
            ContentView()
        }
        else{
            VStack{
                VStack{
                    Spacer()
                    Image("AppLogo")
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Spacer()
                    Text("from")
                    Image("meta")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    withAnimation{
                        self.isActive = true
                    }
                }
            }
        }
        
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
