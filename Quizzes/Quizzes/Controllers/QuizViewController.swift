//
//  QuizViewController.swift
//  Quizzes
//
//  Created by Ramu on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    let quizView = QuizView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = QuizView()
        
        self.view.backgroundColor = .red
        self.view.addSubview(quizView)
    }
    

    

}

//extension QuizViewController: UICollectionViewDataSource, UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 5
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuizCell", for: indexPath) as? <#type#>
//    }
//    
//   
//    }
//
