//
//  ViewController.swift
//  VKApp
//
//  Created by Ryan on 24.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrolView: UIScrollView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
    }
    
    
    @objc func keyboardWillShow(notification: Notification) {
        
        guard let keyboardRect = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {
            return
        }
        scrolView.contentInset.bottom = keyboardRect.height
    }
    
    
}

