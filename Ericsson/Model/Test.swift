//
//  Test.swift
//  Ericsson
//
//  Created by Renato Oliveira Fraga on 2/1/23.
//

import Foundation

struct Test: Codable, Identifiable {
    
    let id: String
    let band: String
    let dualBand: Bool
    let mimo: String
    let group: String
    let cpri: Double?
    let eCpri: Double?
    let width: Int
}
