//
//  UserViewController.swift
//  AboutMe
//
//  Created by Tatiana Lazarenko on 2/13/24.
//

import UIKit

final class UserViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userSurnameLabel: UILabel!
    @IBOutlet var userEmploymentLabel: UILabel!
    @IBOutlet var userHobbyLabel: UILabel!
    
    var personInfo: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userNameLabel.text = personInfo.name
        userSurnameLabel.text = personInfo.surname
        userEmploymentLabel.text = personInfo.employment
        userHobbyLabel.text = personInfo.hobbies
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let bioVC = segue.destination as? BioViewController
        bioVC?.personBio = personInfo
    }

}
