//
//  PlanetSlider.swift
//  SolarSystem
//
//  Created by Patrick Donahue on 8/30/19.
//  Copyright © 2019 Patrick Donahue. All rights reserved.
//

import SwiftUI

struct PlanetSlider: View {
    
    var planetsfromsunarray = ["mercury", "venus", "earth", "mars", "jupiter", "saturn", "uranus", "neptune"]
    let imageQS = ImageQueryService()
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(planets) { planet in
                    Button(action:
                        { self.imageQS.changeImage(planet: planet) }) {
                            Image(planet.imageName).renderingMode(.original)
                            .resizable()
                            .frame(width: 90, height: 80, alignment: .center)
                            .scaledToFit()
                            .clipShape(Circle())
                    }
                    .frame(width: 80, height: 80, alignment: .leading)
                }

        }
    }
        .frame(width: 400, height: 80, alignment: .center)
        .background(Color.black)
    }
}

//struct PlanetSlider_Previews: PreviewProvider {
//    static var previews: some View {
//        PlanetSlider(planet: Planet)
//    }
//}
