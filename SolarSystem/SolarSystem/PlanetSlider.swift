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
                Button(action: imageQS.printName) {
                    Image("sun").renderingMode(.original)
                        .resizable()
                        .frame(width: 90, height: 80, alignment: .center)
                    .scaledToFit()
                    .clipShape(Circle())
                }
                .frame(width: 80, height: 80, alignment: .leading)
                Image(uiImage: #imageLiteral(resourceName: "mercury.png")).resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Image(uiImage: #imageLiteral(resourceName: "venus.png")).resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Image(uiImage: #imageLiteral(resourceName: "earth.png")).resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Image(uiImage: #imageLiteral(resourceName: "mars.png")).resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Image(uiImage: #imageLiteral(resourceName: "jupiter.png")).resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Image(uiImage: #imageLiteral(resourceName: "saturn.png")).resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Image(uiImage: #imageLiteral(resourceName: "uranus.png")).resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Image(uiImage: #imageLiteral(resourceName: "neptune.png")).resizable()
                    .scaledToFit()
                    .clipShape(Circle())
            }
        }.frame(width: 400, height: 80, alignment: .center)
            .background(Color.black)
    }
}

//struct PlanetSlider_Previews: PreviewProvider {
//    static var previews: some View {
//        PlanetSlider(planet: Planet)
//    }
//}
