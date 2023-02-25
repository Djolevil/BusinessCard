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
            Text("Name Surname")
                .font(Font.custom("Pacifico-Regular", size: 40))
                .bold()
                .foregroundColor(.white)

            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
