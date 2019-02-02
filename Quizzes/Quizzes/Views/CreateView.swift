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
        let myGetText = UITextField()
        return myGetText
    }()
    
    public lazy var postTextField: UITextField = {
        let myPostText = UITextField()
        return myPostText
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
        
        
        
    }
}
