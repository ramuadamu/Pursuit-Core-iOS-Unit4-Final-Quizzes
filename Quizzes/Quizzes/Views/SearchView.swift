//
//  SearchView.swift
//  Quizzes
//
//  Created by Ramu on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchView: UIView {
    
    lazy var searchCollectionView: UICollectionView = {
    let layout = UICollectionViewFlowLayout()
    layout.itemSize = CGSize(width: 400, height: 400)
    layout.scrollDirection = .vertical
    layout.sectionInset = UIEdgeInsets(top: 11, left: 11, bottom: 11, right: 11)
    
    let collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
    collectionView.backgroundColor = .white
    return collectionView
}()

override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
    setupSearchCollectionView()
    self.backgroundColor = .blue
}

required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    
}

func setupSearchCollectionView() {
    addSubview(searchCollectionView)

    
    searchCollectionView.translatesAutoresizingMaskIntoConstraints = false
    searchCollectionView.topAnchor.constraint(equalTo: topAnchor).isActive = true
    searchCollectionView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor).isActive = true
    searchCollectionView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor).isActive = true
    
    
}



}


