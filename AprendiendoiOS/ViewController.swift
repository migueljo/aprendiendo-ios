//
//  ViewController.swift
//  AprendiendoiOS
//
//  Created by Miguel Martinez on 21/07/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func loginButtonAction() {
        let email = self.emailTextField.text
        let password = self.passwordTextField.text
        
        if let emailIsEmpty = email?.isEmpty, let passwordIsEmpty = password?.isEmpty {
            if emailIsEmpty || passwordIsEmpty {
                print("Email and password are required")
                return
            }
        }
        
        if email == "m@m.com" && password == "123" {
            print("Welcome!")
            self.performSegue(withIdentifier: "home_seque", sender: nil)
        } else {
            print("Invalid credentials!")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
