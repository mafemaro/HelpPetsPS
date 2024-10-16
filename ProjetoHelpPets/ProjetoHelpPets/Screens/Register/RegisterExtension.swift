import UIKit
import FirebaseAuth

extension RegisterViewController {
    @objc func registerValidation() {
        if (nameRegisterPageTextField.text == "" || emailRegisterPageTextField.text == "" || passwordRegisterPageTextField.text == "") {
            alert(title: "Erro", message: "Preencha todos os campos")
        } else if (passwordRegisterPageTextField.text != confirmPasswordRegisterPageTextField.text) {
            alert(title: "Senha", message: "As senhas não correspondem")
        } else {
            Auth.auth().createUser(withEmail: emailRegisterPageTextField.text!, password: passwordRegisterPageTextField.text!) {
                AuthResult, Error in
                if (Error != nil) {
                    self.alert(title: "Erro", message: Error!.localizedDescription)
                } else {
                    
                    let alertConfirmation = UIAlertController(title: "Cadastro", message: "Cadastro Realizado com Sucesso", preferredStyle: .alert)
                    let action = UIAlertAction(title: "Ok", style: .cancel, handler: {_ in
                        let vc = LoginViewController()
                        vc.modalPresentationStyle = .fullScreen
                        self.present(vc, animated: true)
                    })
                    alertConfirmation.addAction(action)
                    self.present(alertConfirmation, animated: true)
                }
            }
        }
    }
    
    func alert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        if let text = textField.text {
            emailRegisterPageTextField.text = text.lowercased()
        }
    }
}
