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
        
        self.view.backgroundColor = .white
        self.view.addSubview(createView)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
