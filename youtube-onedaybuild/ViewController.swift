//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Zvika on 9/13/20.
//  Copyright © 2020 Zvoykish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }


}

