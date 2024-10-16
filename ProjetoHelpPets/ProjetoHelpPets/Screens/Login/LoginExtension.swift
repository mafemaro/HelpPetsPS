import FirebaseAuth

extension LoginViewController {
    @objc func loginVerification() {
        if (emailLoginPageTextField.text == "" || passwordLoginPageTextField.text == "") {
            print("Campos Vazios")
        } else {
            Auth.auth().signIn(withEmail: emailLoginPageTextField.text!, password: passwordLoginPageTextField.text!) {authResult, Error in
                if (Error != nil) {
                    print("Ta errado")
                } else {
                    let vc = TabBarController()
                    self.present(vc, animated: true)
                }
            }
        }
    }
}
