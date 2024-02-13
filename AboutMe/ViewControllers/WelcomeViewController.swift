//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Tatiana Lazarenko on 2/9/24.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    private let firstColor = UIColor(
        red: 244/255,
        green: 166/255,
        blue: 228/255,
        alpha: 1
    )
    private let secondColor = UIColor(
        red: 100/255,
        green: 149/255,
        blue: 237/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName ?? "")!"
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
    }
}

// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
