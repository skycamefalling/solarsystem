//
//  Collection.swift
//  SolarSystem
//
//  Created by Patrick Donahue on 8/23/19.
//  Copyright © 2019 Patrick Donahue. All rights reserved.
//

import Foundation

struct Collection: Codable {
    var links: [Links]
    var href: Href
    var items: [Item]
}

struct Links: Codable {
    var links: [Href]
    var rel: String
    var prompt: String
    var render: String
}

struct Href: Codable {
    var href: String
}

struct MetaData: Codable {
    var total_hits: String
}

struct Item: Codable {
    var href: Href
    var links: [Links]
    var data: Data
}

struct Data: Codable {
    var title: String
    var nasa_id: String
    var center: String
    var date_created: String
    var description: String
    var media_type: String
    var keywords: [String]
}
