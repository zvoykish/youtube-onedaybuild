//
//  ConstantsTemplate.swift
//  youtube-onedaybuild
//
//  Created by Zvika on 9/13/20.
//  Copyright © 2020 Zvoykish. All rights reserved.
//

import Foundation

struct Constants {
    static let API_KEY = ""
    static let PLAYLIST_ID = ""
    static let API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    
    static let VIDEOCELL_ID = "VideoCell"
}
