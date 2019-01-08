//
//  ViewController.swift
//  ViewExperiment
//
//  Created by terced-leonardoo on 08/01/19.
//  Copyright © 2019 OKraciunas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func presentCameraRoll() {
        let imagePickerController = UIImagePickerController()
        present(imagePickerController, animated: true, completion: nil)
    }
    
    @IBAction func presentActivityView() {
        let image = UIImage()
        let activityViewController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        present(activityViewController, animated: true, completion: nil)
    }
    
    @IBAction func presentAlertView() {
        let alertAction = UIAlertAction(title: "Cancel", style: .destructive, handler: { action in self.dismiss(animated: true, completion: nil)})
        
        let alertController = UIAlertController()
        alertController.title = "Título"
        alertController.message = "Mensagem"
        alertController.addAction(alertAction)
        
        present(alertController, animated: true, completion: nil )
    }
}
