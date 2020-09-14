//
//  CacheManager.swift
//  youtube-onedaybuild
//
//  Created by Zvika on 9/14/20.
//  Copyright © 2020 Zvoykish. All rights reserved.
//

import Foundation

class CacheManager {
    
    static var cache = [String:Data]()
    
    static func setVideo(_ url:String, _ data: Data) {
        cache[url] = data
    }
    
    static func getVideo(_ url:String) -> Data? {
        return cache[url]
    }
}
