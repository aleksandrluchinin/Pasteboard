//
//  ContentView.swift
//  Pasteboard
//
//  Created by Aleksandr Luchinin on 14.10.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.77, green: 0.87, blue: 0.96).ignoresSafeArea()
            VStack {
                Image("Vizitka")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle()
                                .stroke(lineWidth: 5))
                Text("Razrab Gazmanov")
                    .font(.title2)
                    .fontWeight(.heavy)
                Text("IOS / Implementator")
                    .font(.title3)
                    .fontWeight(.light)
                Divider()
                Card(image: "phone.fill", message: "+79777777777")
                Card(image: "envelope", message: "afri@mail.ru")
                
            }.foregroundColor(.white)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let message: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25).padding(.horizontal).frame(height: 50)
            .overlay(HStack
            {Image(systemName: image)
                Text(message)
                    .foregroundColor(.black)
            }.foregroundColor(.blue))
    }
}
