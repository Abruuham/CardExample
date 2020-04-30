//
//  ContentView.swift
//  cardExample
//
//  Created by Abraham Calvillo on 4/17/20.
//  Copyright © 2020 AbrahamCalvillo. All rights reserved.
//



import SwiftUI


extension Color {
    static let darkStart = Color(red: 50 / 255, green: 60 / 255, blue: 65 / 255)
    static let darkEnd = Color(red: 25 / 255, green: 25 / 255, blue: 30 / 255)
   
    static let lightStart = Color(red: 240/255, green: 240/255, blue: 246/255)
    static let lightEnd = Color(red: 120/255, green: 120/255, blue: 123/255)
    
    static let lightYellow = Color(red: 255/255, green: 255/255, blue: 153/255)
    static let darkYellow = Color(red: 255/255, green: 204/255, blue: 0/255)
    
}


struct ContentView: View {
   
    var body: some View {
        
        ZStack{
            Color(red: 224/255, green: 229/255, blue: 236/255)
            
            CardView(name: "Jane Doe", color1: Color.darkStart, color2: Color.darkEnd)
            .offset(y: -230)
                
            }
           .edgesIgnoringSafeArea(.all)
        }
    }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

