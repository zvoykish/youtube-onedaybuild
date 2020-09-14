//
//  Constants.swift
//  youtube-onedaybuild
//
//  Created by Zvika on 9/13/20.
//  Copyright © 2020 Zvoykish. All rights reserved.
//
import Foundation

struct Constants {
    static let API_KEY = "AIzaSyDdlzJytanSrMg-s3hsFnt7VKaqYUBO0u8"
    static let PLAYLIST_ID = "PLMRqhzcHGw1aLoz4pM_Mg2TewmJcMg9ua"
    static let API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    
    static let VIDEOCELL_ID = "VideoCell"
    
    static let YOUTUBE_EMBED_URL = "https://www.youtube.com/embed/"
}
