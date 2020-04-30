//
//  CardView.swift
//  cardExample
//
//  Created by Abraham Calvillo on 4/23/20.
//  Copyright © 2020 AbrahamCalvillo. All rights reserved.
//

import SwiftUI

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}


struct CardView: View {
    
    let name: String
    let color1: Color
    let color2: Color
    
    @State private var showFirstStroke = true
   
    @State var startPoint = CGFloat(9)
    @State var endPoint = CGFloat(9)
    @State var op = 1.0
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .fill(LinearGradient(color1, color2))
                .shadow(color: Color(red: 163/255, green: 177/255, blue: 198/255), radius: 8, x: self.startPoint, y: self.endPoint)
                .frame(width: 300, height: 200 )
                //.foregroundColor(showFirstStroke ? color1 : color2)
                .onAppear(){
                    self.showFirstStroke.toggle()
                    self.startPoint = -9
                    self.endPoint = 9
            }
            
            Image("visaLogo")
                .resizable()
                .frame(width: 80, height: 30)
                .offset(x: 90, y: 70)
                .opacity(op)
                
            
            VStack(alignment: .leading, spacing: 8){
                
                LinearGradient(Color.lightYellow, Color.darkYellow).mask(Image("chip").resizable().frame(width: 45, height: 40))
                .frame(width: 45, height: 40)
                    .opacity(op)

               
                Text("**** **** **** 1234")
                    .foregroundColor(.white)
                    .opacity(op)
                    .font(.system(size: 30, weight: .bold))
                    .onAppear(){
                        self.op = 0.0
                }
                
                Text("Exp. 12/20")
                .foregroundColor(.white)
                .opacity(op)
                .font(.system(size: 10))

               
                    Text("\(name)")
                        .foregroundColor(.white)
                        .opacity(op)
                                    
                
                
                    
                 
            }
            .offset(y: 20)
            
        }
        .rotation3DEffect(.degrees(showFirstStroke ? 0 : 180), axis: (x: 0, y: 1, z: 0))
        .animation(Animation.easeInOut(duration: 1).delay(1).repeatForever(autoreverses: true))
    }
}


