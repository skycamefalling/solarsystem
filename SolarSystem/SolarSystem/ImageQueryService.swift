//
//  ImageQueryService.swift
//  SolarSystem
//
//  Created by Patrick Donahue on 8/22/19.
//  Copyright © 2019 Patrick Donahue. All rights reserved.
//

import Foundation
import UIKit

class ImageQueryService {
        
    var imageURLS = [String]()
    
    func getPlanetImages(planet: String, completion: @escaping (_ result: [String]) -> Void) {
        var imageURLArray: [String] = []
        guard let url = URL(string: "https://images-api.nasa.gov/search?q=\(planet)") else { return precondition(false) }
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            let json = try! JSONSerialization.jsonObject(with: data!, options: []) as! Dictionary<String, AnyObject>
            let data = json["collection"]
            var array = [AnyObject]()
            array = data!["items"] as! [AnyObject]
            self.getImage(hrefs: array, completion: { (result) in
                imageURLArray = result
                 completion(imageURLArray)
            })
        }.resume()
       
    }

        private func getImage(hrefs: [AnyObject], completion: @escaping (_ result: [String]) -> Void) {
            var finalHrefs: [String] = []
            for item in hrefs {
                let newitem = item as! Dictionary<String, AnyObject>
                let stringURL = newitem["href"] as! String
                let urlString = stringURL.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                let collectionURL = URL(string: urlString)
                if let url = collectionURL {
                    let task = URLSession.shared.dataTask(with: url) { data, response, error in
                         let json = try! JSONSerialization.jsonObject(with: data!, options: []) as! Array<String>
                         finalHrefs.append(json[0])
                        completion(finalHrefs)
                     }
                    task.resume()
                }
            }
        }
    
    func printName() {
        print("name")
    }
}
