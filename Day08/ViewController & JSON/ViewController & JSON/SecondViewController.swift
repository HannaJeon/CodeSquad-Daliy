//
//  SecondViewController.swift
//  ViewController & JSON
//
//  Created by Mac on 2017. 3. 23..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomView() {
        
        let jsonData = "[{\"title\":\"\u{c0c8}\u{b85c}\",\"image\":\"01.jpg\", \"content\":\"\u{c601}\u{d654}\u{bcf4}\u{b7ec}\u{ac00}\u{c790}\",\"comments\": [{\"id\":1,\"user\":\"jobs\",\"comment\":\"apple\"},{\"id\":4,\"user\":\"cook\", \"comment\":\"apple\"}]}, {\"title\":\"\u{d1a0}\u{c774}\u{c2a4}\u{d1a0}\u{b9ac} \",\"image\":\"02.jpg\", \"content\":\"Pixar\",\"comments\":[]}, {\"title\": \"ToyStory\",\"image\":\"03.jpg\",\"content\":\"\u{c6b0}\u{b514}\u{ac00} \u{cd5c}\u{ace0}\",\"comments\":[{\"id\":2,\"user\":\"bill\",\"comment\": \"Microsoft\"}]}, {\"title\":\"\u{adf9}\u{c7a5}\u{c740}\",\"image\":\"04.jpg\", \"content\":\"\u{c5b4}\u{b514}\u{b85c}\",\"comments\":[{\"id\":4,\"user\": \"cook\",\"comment\":\"apple\"}]}]".data(using: .utf8)
        
        var jsonArray = [String:Any]()
        
        let json = try? JSONSerialization.jsonObject(with: jsonData!, options: [])
        if let array = json as? [[String:Any]] {
            jsonArray = array[Int(arc4random_uniform(4))]
            
            let photoDetail = self.storyboard?.instantiateViewController(withIdentifier: "randomView") as! PhotoDetailViewController
            if let content = jsonArray["content"] {
                photoDetail.contentlabel = content as! String
            }
            if let title = jsonArray["title"] {
                photoDetail.titlelabel = title as! String
            }
            if let comments = jsonArray["comments"] as? [[String:Any]] {
                photoDetail.commentlabel = "댓글 \(String(comments.count))개"
            }
            if let image = jsonArray["image"] {
                photoDetail.photo = image as! String
            }
            
            self.navigationController?.pushViewController(photoDetail, animated: true)
        }
        
    }

    @IBAction func randomButton(_ sender: UIButton) {
        randomView()
    }
}

