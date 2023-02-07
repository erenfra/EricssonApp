//
//  ContentView.swift
//  Ericsson
//
//  Created by Renato Oliveira Fraga on 1/25/23.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var radioManager = RadioManager()
    let columns = [GridItem(.adaptive(minimum: 250))]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach (radioManager.radios) { radio in
                        NavigationLink {
                            DetailView(id: radio.id, band: radio.band, dualBand: radio.dualBand , mimo: radio.mimo, group: radio.group, cpri: radio.cpri, eCpri: radio.eCpri, power: radio.power, eirp: radio.eirp, antennaGain: radio.antennaGain, weight: radio.weight, width: radio.width, height: radio.height, depth: radio.depth, inputPower: radio.inputPower, minFuse: radio.minFuse, maxFuse: radio.maxFuse, rfConnectorType: radio.rfConnectorType, picture: radio.picture, widthInch: radio.widthInch, heightInch: radio.heightInch, depthInch: radio.depthInch, weightPounds: radio.weightPounds)
                        } label: {
                            Card(title: radio.id, picture: radio.picture ?? "camera")
                                .padding()
                        }

                    }
                }
            }
            .navigationTitle("Ericsson Radios")
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
