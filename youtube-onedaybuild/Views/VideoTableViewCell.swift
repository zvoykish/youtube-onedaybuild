//
//  VideoTableViewCell.swift
//  youtube-onedaybuild
//
//  Created by Zvika on 9/14/20.
//  Copyright © 2020 Zvoykish. All rights reserved.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    var video:Video?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setCell(_ v:Video) {
        self.video = v
        
        guard self.video != nil else {
            return
        }
        
        self.titleLabel.text = self.video!.title
        
        self.dateLabel.text = DateManager.formatDate(date: self.video!.published)
        
        guard self.video!.thumbnail != "" else {
            return
        }
        
        if let cachedData = CacheManager.getVideo(self.video!.thumbnail) {
            // Set the image view
            DispatchQueue.main.async {
                self.thumbnailImageView.image = UIImage(data: cachedData)
            }
            return
        }
        
        let url = URL(string: self.video!.thumbnail)
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url!) { (data, urlResponse, error) in
            if error == nil && data != nil {
                CacheManager.setVideo(url!.absoluteString, data!)
                
                // Check the downloaded image is still relevant (cell wasn't recycled)
                if url!.absoluteString != self.video?.thumbnail {
                    return
                }
                
                // Create the image object
                let image = UIImage(data: data!)
                
                // Set the image view
                DispatchQueue.main.async {
                    self.thumbnailImageView.image = image
                }
            }
        }
        
        dataTask.resume()
    }
}
