//
//  ValueCard.swift
//  Ericsson
//
//  Created by Renato Oliveira Fraga on 2/1/23.
//

import SwiftUI

struct ValueCard: View {
    let value: String
    let color: Color
    var body: some View {
        Text(value)
            .font(.subheadline)
            .frame(maxHeight: 25)
            .padding(.horizontal, 10)
            .background(color)
            .cornerRadius(20)
            
    }
}

struct ValueCard_Previews: PreviewProvider {
    static var previews: some View {
        ValueCard(value: "B2 - B2", color: .green)
    }
}
