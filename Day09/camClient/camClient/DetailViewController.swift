//
//  DetailViewController.swift
//  camClient
//
//  Created by Mac on 2017. 3. 24..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import UIKit
import Alamofire

class DetailViewController: UIViewController {
    let task = URLSession(configuration: URLSessionConfiguration.default).streamTask(withHostName: "127.0.0.1", port: 8000)
    
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        
        task.resume()
        showCam()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    func showCam() {
        // 앞 8byte가 전체 길이를 알려준다
        task.readData(ofMinLength: 0, maxLength: 8, timeout: 0) { (data, true, error) in
            let result = String(data: data!, encoding: String.Encoding.utf8)
            print(result!)
            // 8byte String으로 확인한것을 Int로 다시 maxLength로 넣어 전체 길이를 구할수 있다
            self.task.readData(ofMinLength: 0, maxLength: Int(result!)!, timeout: 0, completionHandler: { (data, true, error) in
                //느리게 출력되는거 잡아줌
                DispatchQueue.main.async {
                    // wifi 연결 상태에 따라 배경색 변경
                    let net = NetworkReachabilityManager()
                    net?.startListening()
                    net?.listener = { status in
                       if net?.isReachable == true {
                            self.view.backgroundColor = UIColor.green
                        } else {
                            self.view.backgroundColor = UIColor.red
                        }
                    }
                    self.imageView.image = UIImage(data: data!)
                }
            })
            self.showCam()
        }
    }
    
}
