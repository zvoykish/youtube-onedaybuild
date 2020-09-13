//
//  Model.swift
//  youtube-onedaybuild
//
//  Created by Zvika on 9/13/20.
//  Copyright © 2020 Zvoykish. All rights reserved.
//

import Foundation

class Model {
    func getVideos () {
        
        // Create a URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        // Get a URLSession Object
        let session = URLSession.shared
        
        // Get a data task from the URLSession ob ject
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            // Check if any errors
            if error != nil || data == nil {
                return
            }
            
            // Parsing the data
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                let r2 = try decoder.decode(Response.self, from: data!)
                dump (r2)
            } catch {
                
            }
        }
        
        // Kick off the task
        dataTask.resume()
    }
}
