//
//  BioViewController.swift
//  AboutMe
//
//  Created by Tatiana Lazarenko on 2/13/24.
//

import UIKit

final class BioViewController: UIViewController {

    @IBOutlet var userBioLabel: UILabel!
    
    var personBio: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userBioLabel.text = personBio.bio
    }
}
