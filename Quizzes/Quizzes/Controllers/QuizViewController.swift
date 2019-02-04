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
       //quizView.quizCollectionView.dataSource = self
       //quizView.quizCollectionView.delegate = self
    }
    

    

}

////extension QuizViewController: UICollectionViewDataSource, UICollectionViewDelegate {
////    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
////       // return quiz.
//    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "QuizCell", for: indexPath) as? QuizCollectionViewCell else { return UICollectionViewCell() }
        
        return cell
        }
//    }

extension QuizViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}


