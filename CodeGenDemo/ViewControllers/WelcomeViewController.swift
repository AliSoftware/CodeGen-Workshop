//
//  WelcomeViewController.swift
//  CodeGenDemo
//
//  Copyright © 2019 Olivier Halligon. All rights reserved.
//

import UIKit
import Lottie

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var animationContainer: UIView!

    override var preferredStatusBarStyle: UIStatusBarStyle { return .lightContent }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // FIXME: [Stage 1] swiftgen strings
        let welcomeText = String(
            format: NSLocalizedString("welcome", comment: ""),
            // FIXME: [Stage 1] swiftgen plist
            Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as! String
        )
        titleLabel.text = welcomeText
        // FIXME: [Stage 1] swiftgen assets
        titleLabel.textColor = UIColor(named: "Colors/star")

        // FIXME: [Stage 1] swiftgen fonts
        // titleLabel.font = ?? Font from "SFDistantGalaxy-Outline.ttf", size 36

        setupAnimationView()
    }

    private func setupAnimationView() {
        // FIXME: [Stage 2] swiftgen json (custom template for Lottie)
        let possibleAnimations = ["bb8", "lightsaber", "rocket"]

        guard let animationName = possibleAnimations.randomElement() else { return }
        let animationView = AnimationView(name: animationName)
        animationView.embed(in: animationContainer)
        
        animationView.play { [weak self] finished in
            self?.presentingViewController?.dismiss(animated: true, completion: nil)
        }
    }

    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}


extension UIView {
    func embed(in container: UIView) {
        container.addSubview(self)
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: container.topAnchor),
            self.leftAnchor.constraint(equalTo: container.leftAnchor),
            self.rightAnchor.constraint(equalTo: container.rightAnchor),
            self.bottomAnchor.constraint(equalTo: container.bottomAnchor)
        ])
    }
}
