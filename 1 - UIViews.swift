//
//  ViewController.swift
//  UIKitTutorials
//
//  Created by Suresh PK on 11/06/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
        let myview = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 100))
        myview.backgroundColor = .blue
        
        
        let secondview = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 100))
        
        myview.addSubview(secondview)
        view.addSubview(myview)
        secondview.backgroundColor = .orange
        
        myview.clipsToBounds = true
        
        myview.transform = CGAffineTransform(rotationAngle: .pi/4)
        
        let label = UILabel(frame:  CGRect(x: 110, y: 400, width: 200, height: 100))
        label.text = "Hello, World!"
        label.textColor = .black
        label.textAlignment = .center
        view.addSubview(label)
        
        
        let image = UIImageView(frame: CGRect(x: 100, y: 200, width: 200, height: 200))
        image.image = UIImage(systemName: "apple.logo")
        image.contentMode = .scaleAspectFit
        view.addSubview(image)
        
        image.alpha = 0.5
        // image.isHidden = true
        
        
        let img2 = UIImageView(frame: CGRect(x: 100, y: 400, width: 200, height: 200))
        img2.image = UIImage(named:"apple")
        view.addSubview(img2)
        img2.contentMode = .scaleAspectFit
        
        
        
        
        
        
        
    }


}





