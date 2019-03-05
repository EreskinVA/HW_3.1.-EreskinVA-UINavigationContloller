//
//  LoginVC.swift
//  HW_3.1.-EreskinVA-UINavigationContloller
//
//  Created by Vladimir Ereskin on 05/03/2019.
//  Copyright © 2019 Vladimir Ereskin. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    var information = ""

    // MARK: - ... @IBOutlet
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - ... UIViewController Methods
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "detailSegue" else { return }
        
        let controller = segue.destination as! DetailVC
        
        controller.information = information
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.barTintColor = self.view.backgroundColor
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // MARK: - ... User Methods
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Ошибка!", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(ok)
    
        present(alert, animated: true)
    }
    
    // MARK: - ... @IBAction

    @IBAction func loginButton(_ sender: UIButton) {
        
        guard let userName = userNameTF.text , !userName.isEmpty else {
            showAlert(message: "Не заполнено поле: User name")
            return
        }
        guard let passwordTF = passwordTF.text , !passwordTF.isEmpty else {
            showAlert(message: "Не заполнено поле: password")
            return
        }
        
        information = "\(userName)"
        
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func forgotUserNameButton(_ sender: UIButton) {

        information = "Forgot user name"
        
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {

        information = "Forgot password"
        
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
}


