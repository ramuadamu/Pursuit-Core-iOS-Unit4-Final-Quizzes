//
//  ProfileViewController.swift
//  Quizzes
//
//  Created by Ramu on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let profileView = ProfileView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = ProfileView()
        
        self.view.backgroundColor = .gray
        self.view.addSubview(profileView)
    }
    

   

}
