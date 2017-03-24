//
//  PhotoDetailViewController.swift
//  ViewController & JSON
//
//  Created by Mac on 2017. 3. 23..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    var contentlabel = ""
    var titlelabel = ""
    var commentlabel = ""
    var photo = ""
    
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentLabel.text = contentlabel
        titleLabel.text = titlelabel
        commentLabel.text = commentlabel
        photoView.image = UIImage(named: photo)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
