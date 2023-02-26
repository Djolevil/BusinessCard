//
//  ContentView.swift
//  BusinessCard
//
//  Created by Djordje Knezevic on 23.2.23..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.10, green: 0.74, blue: 0.61).edgesIgnoringSafeArea(.all)
            VStack {
                Image("rincewind").resizable().aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth:  5))
                Text("Name Surname")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Job Title")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "Phone Number", imageName: "phone.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white )
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(Color(red: 0.10, green: 0.74, blue: 0.61))
                Text(text)
            })
            .padding(.all)
    }
}
