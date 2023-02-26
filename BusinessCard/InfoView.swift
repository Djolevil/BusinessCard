//
//  InfoView.swift
//  BusinessCard
//
//  Created by Djordje Knezevic on 26.2.23..
//

import SwiftUI

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

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
