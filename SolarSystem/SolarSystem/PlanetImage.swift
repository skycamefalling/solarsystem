//
//  PlanetImage.swift
//  SolarSystem
//
//  Created by Patrick Donahue on 8/30/19.
//  Copyright © 2019 Patrick Donahue. All rights reserved.
//

import SwiftUI

struct PlanetImage: View {
    var image: UIImage
    var body: some View {
        Image(uiImage: image)
    }
}

//struct PlanetImage_Previews: PreviewProvider {
//    static var previews: some View {
//        PlanetImage()
//    }
//}
