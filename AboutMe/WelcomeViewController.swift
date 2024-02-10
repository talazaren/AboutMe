//
//  WelcomeViewController.swift
//  AboutMe
//
//  Created by Tatiana Lazarenko on 2/9/24.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var backgroundGradientView: UIView!
    
    var welcomeMessage: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeMessage
        
        setGradient(
            withColorOne: UIColor(red: 244/255, green: 166/255, blue: 228/255, alpha: 1),
            andColorTwo: UIColor(red: 100/255, green: 149/255, blue: 237/255, alpha: 1)
        )
    }
    
    private func setGradient(withColorOne colorOne: UIColor, andColorTwo colorTwo: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]

        gradientLayer.shouldRasterize = true
        
        gradientLayer.zPosition = -1 // без этого свойства градиент перекрывает остальные элементы, не получилось исправить это по-другому
        backgroundGradientView.layer.addSublayer(gradientLayer)
    }
}
