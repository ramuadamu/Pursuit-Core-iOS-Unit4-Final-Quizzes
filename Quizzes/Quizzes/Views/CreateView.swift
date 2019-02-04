//
//  CreateView.swift
//  Quizzes
//
//  Created by Ramu on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class CreateView: UIView {

    public lazy var titleText: UITextField = {
        let myTitleText = UITextField()
        myTitleText.backgroundColor = .white
        myTitleText.placeholder = "Enter quiz"
        return myTitleText
    }()

    public lazy var getTextField: UITextView = {
        let firstQuizFact = UITextView()
        firstQuizFact.backgroundColor = .white
        firstQuizFact.text = "Enter first quiz fact"
        return firstQuizFact
    }()
    
    public lazy var postTextField: UITextView = {
        let secondQuizFact = UITextView()
        secondQuizFact.backgroundColor = .white
        secondQuizFact.text = "Enter second quiz fact"
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
        setUptitleText()
        setUpgetTextField()
        setUppostTextField()
    }
    
    func setUptitleText() {
        
            addSubview(titleText)
            titleText.translatesAutoresizingMaskIntoConstraints = false
            titleText.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant:80).isActive = true
            titleText.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
            titleText.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11).isActive = true
            titleText.heightAnchor.constraint(equalToConstant: 30).isActive = true
        }
        
        func setUpgetTextField() {
            addSubview(getTextField)
            getTextField.translatesAutoresizingMaskIntoConstraints = false
            getTextField.topAnchor.constraint(equalTo: titleText.bottomAnchor, constant: 11).isActive = true
            getTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
            getTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11).isActive = true
            getTextField.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.30).isActive = true
        }
        
        func setUppostTextField() {
            addSubview(postTextField)
            postTextField.translatesAutoresizingMaskIntoConstraints = false
            postTextField.topAnchor.constraint(equalTo: getTextField.bottomAnchor, constant: 11).isActive = true
            postTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 11).isActive = true
            postTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -11).isActive = true
            postTextField.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.30).isActive = true
        }
        
        
        
}
