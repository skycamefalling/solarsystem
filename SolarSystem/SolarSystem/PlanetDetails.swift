//
//  PlanetDetails.swift
//  SolarSystem
//
//  Created by Patrick Donahue on 8/30/19.
//  Copyright © 2019 Patrick Donahue. All rights reserved.
//

import SwiftUI

struct PlanetDetails: View {
    var planet: Planet
    var body: some View {
        VStack(alignment: .leading) {
            Text("Planet Name: \(planet.name)").font(.largeTitle)
            Text("Diameter: \(planet.diameter)")
            Text("Distance from the Sun: \(planet.distance)")
            Text("Earth Year: \(planet.year)")
        }
    }
}

//struct PlanetDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        PlanetDetails()
//    }
//}
