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
        titleText.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleText.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        titleText.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        
        getTextField.translatesAutoresizingMaskIntoConstraints = false
        getTextField.topAnchor.constraint(equalTo: titleText.bottomAnchor, constant: 11).isActive = true
        getTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        getTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
        //getTextField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -11).isActive = true
        
        

        
    }
}
