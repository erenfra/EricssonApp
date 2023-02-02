//
//  Radios.swift
//  Ericsson
//
//  Created by Renato Oliveira Fraga on 1/25/23.
//

import Foundation

class RadioManager: ObservableObject {
    @Published var radios: [RadioType] = Bundle.main.decode("radios.json")

    
}
