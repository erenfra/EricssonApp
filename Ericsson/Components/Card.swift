//
//  Card.swift
//  Ericsson
//
//  Created by Renato Oliveira Fraga on 2/1/23.
//

import SwiftUI

struct Card: View {
    var title: String
    var picture: String
    var body: some View {
        VStack {
            Image(picture)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(title)
                .font(.headline)
                .foregroundColor(.black)
        }
        .frame(width: 200,height: 200, alignment: .center)
        .background(Color.white)
        .cornerRadius(20)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 1)    
        )
        .shadow(color: .black.opacity(0.5), radius: 5, x: 5,y: 5)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(title: "Radio 2203", picture: "RADIO2203")
    }
}
