//
//  ViewController.swift
//  IOS8SwiftTakePhotoTutorial
//
//  Created by Max Matuson on 2/17/16.
//  Copyright © 2016 Max Matuson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    var imagePicker: UIImagePickerController!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func takePhoto(sender: UIButton) {
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .Camera
        
        presentViewController(imagePicker, animated: true, completion: nil)
        
        func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
            imagePicker.dismissViewControllerAnimated(true, completion: nil)
            imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        }
    }
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

