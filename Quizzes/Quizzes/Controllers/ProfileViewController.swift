//
//  ProfileViewController.swift
//  Quizzes
//
//  Created by Ramu on 2/1/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITextFieldDelegate {
    
    
    let profileView = ProfileView()
    private var imagePickerViewController: UIImagePickerController!


    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = ProfileView()
        self.view.backgroundColor = .gray
        self.view.addSubview(profileView)
        setUpAlertController()
        self.profileView.imageButton.addTarget(self, action: #selector(setImageAlertController), for: .touchUpInside)
        userDefault()
    }
    @objc func setProfileImage() {
        imagePickerViewController = UIImagePickerController()
        imagePickerViewController.delegate = self
        if !UIImagePickerController.isSourceTypeAvailable(.camera) {
            UIImagePickerController.isSourceTypeAvailable(.photoLibrary)
        }
        present(imagePickerViewController,animated: true, completion: nil)
    }

    @objc func setImageAlertController() {
        let alert = UIAlertController(title: "", message: "", preferredStyle: .actionSheet)
        let PhotoLibrary = UIAlertAction(title: "Photo Library", style: .default) { (alert: UIAlertAction) in
            self.setProfileImage()
        }

        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (alert) in
            self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(PhotoLibrary)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }

    func setUpAlertController() {
        let alertController = UIAlertController(title: "Enter your user name", message: "special characters are not allowed", preferredStyle: .alert)
        alertController.addTextField { (textfield) in
            textfield.font = UIFont.boldSystemFont(ofSize: 15)
            textfield.layer.cornerRadius = 9.0
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel) { (alert: UIAlertAction) in
            self.dismiss(animated: true, completion: nil)
        }
        let submit = UIAlertAction(title: "Submit", style: .default) { (alert) in
            guard let userName = alertController.textFields?.first?.text
                else {
                    return
            }
            self.profileView.userNameLabel.text = userName

            UserDefaults.standard.set(userName, forKey: UserDefaultsKeys.DefaultSearchKey)
        }
        alertController.addAction(cancel)
        alertController.addAction(submit)
        present(alertController, animated: true, completion: nil)
    }

    private func userDefault() {
        if let defaultUsername = UserDefaults.standard.object(forKey: UserDefaultsKeys.DefaultSearchKey) as? String {


            self.profileView.imageButton.addTarget(self, action: #selector(setImageAlertController), for: .touchUpInside)
            self.profileView.userNameLabel.text = defaultUsername
        } else {

        }
    }




    }
    extension ProfileViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            profileView.imageButton.setBackgroundImage(image, for: .normal)
        } else {
            print("original image is nil")
        }
        dismiss(animated: true, completion: nil)
    }
}



