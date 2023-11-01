//
//  MainBackground.swift
//  AnimatedCircleChart
//
//  Created by Rakan Alotaibi on 16/04/1445 AH.
//

import SwiftUI

struct MainBackground<Content>: View where Content: View{
    var showBackground : Bool = true
    let childView: () -> Content
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            
            GeometryReader{ proxy in
                Rectangle()
                    .foregroundStyle(LinearGradient(
                        colors:[.white, .clear],
                        startPoint: .top,
                        endPoint: .bottom)
                    )
                    .frame(height: proxy.size.height * 0.5)
                    .blur(radius: proxy.size.width / 2.8)
                
                if showBackground {
                    
                    Circle()
                        .fill(AppColors.redPink)
                        .frame(width: proxy.size.width)
                        .blur(radius: proxy.size.width / 2.3)
                        .offset(x: proxy.size.width * 0.6, y: proxy.size.height * 0.1)
                    
                    Circle()
                        .fill(AppColors.skyBlue)
                        .frame(width: proxy.size.width * 0.8)
                        .blur(radius: proxy.size.width / 4)
                        .offset(x: -proxy.size.width * 0.5, y: proxy.size.height * 0.3)
                    
                    Circle()
                        .fill(AppColors.purple)
                        .frame(width: proxy.size.width * 0.7)
                        .blur(radius: proxy.size.width / 3.5)
                        .offset(x:proxy.size.width * 0.05, y: proxy.size.height * 0.15)
                }
            }
            
            childView()
        }
    }
}

#Preview {
    MainBackground {
        Text("Hello")
            .foregroundStyle(.white)
    }
}
