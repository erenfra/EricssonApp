//
//  DetailView.swift
//  Ericsson
//
//  Created by Renato Oliveira Fraga on 2/1/23.
//

import SwiftUI

struct DetailView: View {
    
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
    @State private var isMetric: Bool = false
    
    var body: some View {
        
            VStack {
                HStack(spacing: 30) {
                    Image(picture ?? "N/A")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                    Text(id)
                        .font(.title)
                    
                }
                Form {
                    Section(header: Text("Characteristics")) {
                        HStack(alignment: .center){
                            Text("Bands")
                            Spacer()
                            ValueCard(value: "\(band)", color: .blue.opacity(0.5))
                        }
                        HStack(alignment: .center, spacing: 20) {
                            Text("Dual Band")
                            Spacer()
                            ValueCard(value: dualBand ? "Yes" : "No", color: dualBand ? .green.opacity(0.85) : .red.opacity(0.85))
                         }
                        HStack(alignment: .center) {
                            Text("MIMO")
                            Spacer()
                            ValueCard(value: "\(mimo)", color: .yellow)
                        }
                                             
                        if eirp == nil {
                            HStack(alignment: .center) {
                                Text("Power [W]")
                                Spacer()
                                ValueCard(value: "\(power ?? 0)", color: .mint.opacity(0.65))
                            }
                        } else {
                            HStack(alignment: .center) {
                                Text("EIRP [dBm]")
                                ValueCard(value: "\(eirp ?? 0)", color: .mint.opacity(0.65))
                                Spacer()
                                Text("Antenna Gain:")
                                ValueCard(value: "\(antennaGain ?? 0)", color: .cyan.opacity(0.65))
                            }
                        }
                        HStack(alignment: .center) {
                            Text("Radio Group")
                            Spacer()
                            ValueCard(value: "\(group)", color: .purple.opacity(0.5))
                                               
                        }
                     }
                    Section(header: Text("Physical Characteristics")) {
                        Toggle(isOn: $isMetric) { Text("Metric System")}
                        HStack(alignment: .center) {
                            Text("Width [\(isMetric ? "mm" : "inch")]")
                            Spacer()
                            ValueCard(value: "\(isMetric ? width : width * 0.0394)", color: .cyan.opacity(0.5))
                                               
                        }
                        HStack(alignment: .center) {
                            Text("Height [\(isMetric ? "mm" : "inch")]")
                            Spacer()
                            ValueCard(value: "\(isMetric ? height : height * 0.0394)", color: .blue.opacity(0.5))
                                               
                        }
                        HStack(alignment: .center) {
                            Text("Depth [\(isMetric ? "mm" : "inch")]")
                            Spacer()
                            ValueCard(value: "\(isMetric ? depth : depth * 0.0394)", color: .indigo.opacity(0.50))
                                               
                        }
                        HStack(alignment: .center) {
                            Text("Weight [\(isMetric ? "kg" : "pounds")]")
                            Spacer()
                            ValueCard(value: "\(isMetric ? weight : weight * 2.20)", color: .orange)
                                               
                        }
                        
                    }
                    Section(header: Text("Fronthaul Connection")) {
                        if eCpri == nil {
                            HStack(alignment: .center) {
                                Text("CPRI [Gbps] up to")
                                Spacer()
                                ValueCard(value: "\(cpri ?? 0)", color: .blue.opacity(0.2))
                            }
                        } else {
                            HStack(alignment: .center) {
                                Text("eCPRI [Gbps] up to")
                                Spacer()
                                ValueCard(value: "\(eCpri ?? 0)", color: .blue.opacity(0.2))
                            }
                        }
                        
                    }
                    Section(header: Text("Electrical")) {
                        HStack(alignment: .center){
                            Text("Input Power")
                            Spacer()
                            ValueCard(value: "\(inputPower)", color: .brown.opacity(0.5))
                        }
                        HStack(alignment: .center) {
                            Text("Minimum Fuse [A]")
                            Spacer()
                            ValueCard(value: "\(minFuse ?? 0)", color: .green.opacity(0.5))
                        }
                        HStack (alignment: .center){
                            Text("Maximun Allowed Fuse [A]")
                            Spacer()
                            ValueCard(value: "\(maxFuse ?? 0)", color: .yellow.opacity(0.5))
                        }
                    }
                    Section(header: Text("RF Connector")) {
                        HStack(alignment: .center) {
                            Text("Type")
                            Spacer()
                            ValueCard(value: "\(rfConnectorType ?? "N/A")", color: .gray.opacity(0.5))
                        }
                    }
                }
                
                
                Spacer()
            }
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(id: "Radio 2203", band: "B5 - B14 - B2/B25", dualBand: true, mimo: "2T2R", group: "5b", cpri: 9.8, eCpri: nil, power: 5, eirp: nil, antennaGain: nil, weight: 4.5, width: 200, height: 200, depth: 100, inputPower: "AC / DC", minFuse: 4, maxFuse: 16, rfConnectorType: "4.3-10", picture: "AIR6464")
    }
}
