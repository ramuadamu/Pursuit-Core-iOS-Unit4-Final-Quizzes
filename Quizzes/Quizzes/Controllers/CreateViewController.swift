//
//  CreateViewController.swift
//  Quizzes
//
//  Created by Ramu on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {
    
    
    let createView = CreateView()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view = CreateView()
        
        self.view.backgroundColor = .green
        self.view.addSubview(createView)
        
    }
    

    

}
