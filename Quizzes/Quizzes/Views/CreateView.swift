//
//  CreateView.swift
//  Quizzes
//
//  Created by Ramu on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CreateView: UIView {

    public lazy var titleText: UITextView = {
        let myTitleText = UITextView()
        return myTitleText
    }()

    public lazy var getTextField: UITextField = {
        let firstQuizFact = UITextField()
        return firstQuizFact
    }()
    
    public lazy var postTextField: UITextField = {
        let secondQuizFact = UITextField()
        return secondQuizFact
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit() {
        setConstraints()
    }
    
    func setConstraints() {
        addSubview(titleText)
        addSubview(getTextField)
        addSubview(postTextField)
        
        titleText.translatesAutoresizingMaskIntoConstraints = false
        titleText.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        titleText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        titleText.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 30).isActive = true
//        view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
//        view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
//        view.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3).isActive = true
//        imageButton.translatesAutoresizingMaskIntoConstraints = false
//        imageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        imageButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        imageButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1).isActive = true
//        imageButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3).isActive = true
//        
//        
//        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
//        userNameLabel.topAnchor.constraint(equalTo: imageButton.bottomAnchor, constant: 30).isActive = true
//        userNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
//        userNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
//        userNameLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.03).isActive = true
        
        
    }
}
