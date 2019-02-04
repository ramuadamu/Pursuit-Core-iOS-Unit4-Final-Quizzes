//
//  SearchViewController.swift
//  Quizzes
//
//  Created by Ramu on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

        
        var searchView = SearchView()
        var searchQuiz = [QuizzesModel]() {
            didSet {
                DispatchQueue.main.async {
                    self.searchView.searchCollectionView.reloadData()
                }
            }
        }
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.view.backgroundColor = .purple
            self.view.addSubview(searchView)
            navigationItem.title = "Search Quizzes Online"
            
            searchView.searchCollectionView.register(SearchCell.self, forCellWithReuseIdentifier: "SearchCell")
            searchView.searchCollectionView.dataSource = self
            searchView.searchCollectionView.delegate = self
            getQuiz()
            
            
        }
        
        func getQuiz() {
            APIClient.getQuiz { (appError, quizData) in
                if let appError = appError {
                    print(appError.errorMessage())
                } else if let data = quizData {
                    self.searchQuiz = data
                    dump(data)
                }
            }
        }
        
        
        
        
    }
    
    extension SearchViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return searchQuiz.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            guard let cell = searchView.searchCollectionView.dequeueReusableCell(withReuseIdentifier: "SearchCell", for: indexPath) as? SearchCell else { return UICollectionViewCell() }
            let cellInfo = searchQuiz[indexPath.row]
            cell.searchLabel.text = cellInfo.quizTitle
            return cell
        }
        
        
    

    

}
