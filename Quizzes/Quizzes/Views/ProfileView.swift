//
//  ProfileView.swift
//  Quizzes
//
//  Created by Ramu on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileView: UIView {

    public lazy var profileImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "placeholder-image"))
        imageView.backgroundColor = .white
        return imageView
    }()
    
    public lazy var profileUserName: UIButton = {
        let userName = UIButton()
        userName.backgroundColor = .white
        return userName
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
        backgroundColor = .gray
        setupViews()
    }
}

extension ProfileView {
    private func setupViews() {
        setupProfileImageView()
        setupProfileUserName()
    }
    
    private func setupProfileImageView() {
        addSubview(profileImageView)
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor).isActive = true
        profileImageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        profileImageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        profileImageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.50).isActive = true
    }
    
    private func setupProfileUserName() {
        addSubview(profileUserName)
        profileUserName.translatesAutoresizingMaskIntoConstraints = false
        profileUserName.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: -12).isActive = true
        // profileUserName.centerXAnchor.constraint(equalTo: centerXAnchor, constant:20).isActive = true
        profileUserName.leadingAnchor.constraint(equalTo:centerXAnchor, constant: -11).isActive = true
        
        
    }
}


