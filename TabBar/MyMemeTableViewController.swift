//
//  MyMemeTableViewController.swift
//  TabBar
//
//  Created by Minoru Hayata on 2021/03/19.
//

import Foundation
import UIKit

class MyMemeTableViewController : UITableViewController {


    var memes: [myMeme]! {
        let object = UIApplication.shared.delegate
        let appDelegete = object as! AppDelegate
        return appDelegete.memes
    }

    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell")!
        let myMeme = self.memes[(indexPath as NSIndexPath).row]
        
        cell.textLabel?.text = myMeme.topText + myMeme.bottomText
        cell.imageView?.image = myMeme.myMemeImage
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailController.memeOne = self.memes[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(detailController, animated: true)
    
    }
    
    
   
}
