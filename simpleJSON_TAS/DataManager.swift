//
//  DataManager.swift
//  simpleJSON_TAS
//
//  Created by Alec Smith on 3/4/19.
//  Copyright © 2019 Alec Smith. All rights reserved.
//

import UIKit

class DataManager: NSObject {
    
    func getData() {
        
        let urlString = "https://api.myjson.com/bins/oymny"
        
        let actualUrl = URL(string: urlString)
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: actualUrl!) {(data, response, error) in
            
            if error != nil {
                // handle the error
            }
            
            if let sucessfulData = data {
                print(String(data: sucessfulData, encoding: String.Encoding.ascii))
            }
        }
        task.resume()
    }
}
