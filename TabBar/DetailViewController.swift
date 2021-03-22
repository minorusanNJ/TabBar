//
//  DetailViewController.swift
//  TabBar
//
//  Created by Minoru Hayata on 2021/03/22.
//

import Foundation
import UIKit

class DetailViewController : UIViewController {
    
    var memeOne : myMeme!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        imageView!.image = memeOne.myMemeImage
    }
    
}
