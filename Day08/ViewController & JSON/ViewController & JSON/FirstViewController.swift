//
//  FirstViewController.swift
//  ViewController & JSON
//
//  Created by Mac on 2017. 3. 23..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
     
    @IBOutlet weak var showView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 버튼 누르면 카메라 실행하는 함수
    @IBAction func pickerButton(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        imagePicker.delegate = self
        self.showDetailViewController(imagePicker, sender: nil)
    }
    
    // 촬영한 이미지 화면에 imageView에 출력하는 함수(imagePickerController는 UIImagePickerControllerDelegate프로토콜 구현함수
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        picker.dismiss(animated: true, completion: nil)
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        showView.image = image
        
    }

}

