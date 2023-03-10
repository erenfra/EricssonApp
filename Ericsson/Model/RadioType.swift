//
//  Radio.swift
//  Ericsson
//
//  Created by Renato Oliveira Fraga on 1/25/23.
//

import Foundation

struct RadioType: Codable, Identifiable {
    
    let id: String
    let band: String
    let dualBand: Bool
    let mimo: String
    let group: String
    let cpri: Double?
    let eCpri: Double?
    let power: Double?
    let eirp: Int?
    let antennaGain: Double?
    let weight: Double
    let width: Double
    let height: Double
    let depth: Double
    let inputPower: String
    let minFuse: Int?
    let maxFuse: Int?
    let rfConnectorType: String?
    let picture: String?
    
    var widthInch: Double {
        return round((width * 0.0393701)*100)/100.0
    }
    
    var heightInch: Double {
        return round((height * 0.0393701)*100)/100.0
    }
    
    var depthInch: Double {
        return round((depth * 0.0393701)*100)/100.0
    }
    
    var weightPounds: Double {
        return round((weight * 2.20462)*100)/100.0
    }
    
}



