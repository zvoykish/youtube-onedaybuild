//
//  DetailViewController.swift
//  youtube-onedaybuild
//
//  Created by Zvika on 9/14/20.
//  Copyright © 2020 Zvoykish. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var textView: UITextView!
    
    var video : Video?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        guard video != nil else {
            return
        }
        
        // Create the embed URL
        let embedUrl = Constants.YOUTUBE_EMBED_URL + video!.videoId
        let url = URL(string: embedUrl)
        
        // Load it into web view
        let urlRequest = URLRequest(url: url!)
        webView.load(urlRequest)
        
        // Set title, date and description
        titleLabel.text = video!.title
        dateLabel.text = DateManager.formatDate(date: video!.published)
        textView.text = video!.description
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
