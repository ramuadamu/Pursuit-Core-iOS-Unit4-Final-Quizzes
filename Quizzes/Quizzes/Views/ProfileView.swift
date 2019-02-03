//
//  ProfileView.swift
//  Quizzes
//
//  Created by Ramu on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileView: UIView {

    public lazy var myLabel: UILabel = {
        let myLabel = UILabel()
        myLabel.text = "Edit Photo"
        myLabel.textColor = .black
        myLabel.textAlignment = .left
        return myLabel
}()

    public lazy var myView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .white
        return myView
}()

    public lazy var imageButton: UIButton = {
        let profilePhotoButton = UIButton()
        profilePhotoButton.setBackgroundImage(UIImage.init(named: "placeholder-image"), for: .normal)
        profilePhotoButton.backgroundColor = .gray
        profilePhotoButton.layer.cornerRadius = 20
        profilePhotoButton.clipsToBounds = true
        return profilePhotoButton
}()

    public lazy var userNameLabel: UILabel = {
        let profileUsername = UILabel()
        profileUsername.textColor = .black
        profileUsername.textAlignment = .center
        profileUsername.font = UIFont.boldSystemFont(ofSize: 20)
        profileUsername.text = "@Ramu"
        return profileUsername
        
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

    private func setConstraints() {
    addSubview(myLabel)
    addSubview(myView)
    addSubview(imageButton)
    addSubview(userNameLabel)
    
    myLabel.translatesAutoresizingMaskIntoConstraints = false
    myLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
    myLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    myLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
    
    myView.translatesAutoresizingMaskIntoConstraints = false
    myView.topAnchor.constraint(equalTo: myLabel.bottomAnchor, constant: 30).isActive = true
    myView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
    myView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
    myView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3).isActive = true
    imageButton.translatesAutoresizingMaskIntoConstraints = false
    imageButton.centerXAnchor.constraint(equalTo: myView.centerXAnchor).isActive = true
    imageButton.centerYAnchor.constraint(equalTo: myView.centerYAnchor).isActive = true
    imageButton.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1).isActive = true
    imageButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.3).isActive = true
    
    
    userNameLabel.translatesAutoresizingMaskIntoConstraints = false
    userNameLabel.topAnchor.constraint(equalTo: imageButton.bottomAnchor, constant: 30).isActive = true
    userNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    userNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
    userNameLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.03).isActive = true

}
}
