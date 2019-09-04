//
//  PlanetInfo.swift
//  SolarSystem
//
//  Created by Patrick Donahue on 8/30/19.
//  Copyright © 2019 Patrick Donahue. All rights reserved.
//

import Foundation


struct Planet: Identifiable {
    var id: Int
    var name: String
    var diameter: String
    var distance: String
    var year: String
    var imageName: String
}

let planets = [
    Planet(id: 0, name: "Mercury", diameter: "4,879 km", distance: "57,909,227 km", year: "88 Earth Days", imageName: "mercury"),
    Planet(id: 1, name: "Venus", diameter: "12,104 km", distance: "108,209,475 km", year: "225 Earth Days", imageName: "venus"),
    Planet(id: 2, name: "Earth", diameter: "12,742 km", distance: "149,598,262 km", year: "365.24 Days", imageName: "earth"),
    Planet(id: 3, name: "Mars", diameter: "6,779 km", distance: "227,943,824 km", year: "1.9 Earth Years", imageName: "mars"),
    Planet(id: 4, name: "Jupiter", diameter: "139,822 km", distance: "778,340,821 km", year: "11.9 Earth Years", imageName: "jupiter"),
    Planet(id: 5, name: "Saturn", diameter: "116,464 km", distance: "1,426,666,422 km", year: "29.5 Earth Years", imageName: "saturn"),
    Planet(id: 6, name: "Uranus", diameter: "50,724 km", distance: "2,870,658,186 km", year: "84.0 Earth Years", imageName: "uranus"),
    Planet(id: 7, name: "Neptune", diameter: "49,244 km", distance: "4,498,396,441 km", year: "164.8 Earth Years", imageName: "neptune")
    
]
