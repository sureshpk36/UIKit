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

        // MARK: - Main View Setup
        view.backgroundColor = .green

        // MARK: - Blue Container View (myview)
        let myview = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 100))
        myview.backgroundColor = .blue
        myview.clipsToBounds = true                       // Ensures subviews don’t overflow
        myview.transform = CGAffineTransform(rotationAngle: .pi / 4) // Rotate 45 degrees

        // Orange Subview inside myview
        let secondview = UIView(frame: CGRect(x: 50, y: 50, width: 200, height: 100))
        secondview.backgroundColor = .orange
        myview.addSubview(secondview)

        view.addSubview(myview)

        // MARK: - UILabel
        let label = UILabel(frame: CGRect(x: 110, y: 400, width: 200, height: 100))
        label.text = "Hello, World!"
        label.textColor = .black
        label.textAlignment = .center
        view.addSubview(label)

        // MARK: - System Image (SF Symbol)
        let image = UIImageView(frame: CGRect(x: 100, y: 200, width: 200, height: 200))
        image.image = UIImage(systemName: "apple.logo")  // SF Symbol image
        image.contentMode = .scaleAspectFit
        image.alpha = 0.5                                 // Semi-transparent
        view.addSubview(image)

        // MARK: - Asset Image (Local)
        let img2 = UIImageView(frame: CGRect(x: 100, y: 400, width: 200, height: 200))
        img2.image = UIImage(named: "apple")             // From Assets.xcassets
        img2.contentMode = .scaleAspectFit
        view.addSubview(img2)
    }
}
