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
        
        // MARK: - View Background
        view.backgroundColor = .green
        
        // MARK: - UIButton Setup
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 50, y: 50, width: 200, height: 100)
        button.setTitle("Tap me", for: .normal)           // Default state
        button.setTitle("Tapped", for: .highlighted)      // While pressing
        button.addTarget(self, action: #selector(handleTap), for: .touchUpInside)
        view.addSubview(button)
    }
    
    // MARK: - Button Action (touchUpInside)
    @objc func handleTap(_ button: UIButton) {
        print("hello") // Prints when button is tapped and released
    }
    
    // MARK: - Optional: Other Actions (if connected via storyboard)
    @IBAction func TouchUpInside(_ sender: Any) {
        print("Button Pressed, hands up!") // For storyboard: touchUpInside
    }

    @IBAction func TouchDown(_ sender: Any) {
        print("Button Pressed, hands in touch!") // For storyboard: touchDown
    }
}
