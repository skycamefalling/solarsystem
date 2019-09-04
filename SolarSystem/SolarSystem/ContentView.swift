//
//  ContentView.swift
//  SolarSystem
//
//  Created by Patrick Donahue on 8/22/19.
//  Copyright © 2019 Patrick Donahue. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
//        ForEach(planets) { planet in
//            PlanetDetails(planet: planet)
//
//        }
        PlanetSlider()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
