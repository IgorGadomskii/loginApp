

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var forgetNameButton: UIButton!
    @IBOutlet weak var forgetPasswordButton: UIButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.returnKeyType = .next
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameTextField {
            passwordTextField.returnKeyType = .done
            passwordTextField.becomeFirstResponder()
        } else if passwordTextField.resignFirstResponder() {
            logginingIn()
         performSegue(withIdentifier: "GreetingsViewController", sender: self)
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingsVC = segue.destination
                as? GreetingsViewController else {return}
        guard let newName = nameTextField.text else {return}
        let greetings = "Welcome, " + newName + "!"

        greetingsVC.nameText = greetings
    }

    @IBAction func rememberringUserName() {
        let recallNameAlert = UIAlertController.init(title: "Forget your name?",
                                                     message: "Your name is UserName",
                                                     preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Ok", style: .default)
        recallNameAlert.addAction(cancelAction)
        self.present(recallNameAlert, animated: true)
    }
    
    
    @IBAction func rememberringPassword() {
        let recallPassword = UIAlertController.init(title: "Forget your password?",
                                                    message: "Your password is 12345",
                                                    preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Ok", style: .default)
        recallPassword.addAction(cancelAction)
        self.present(recallPassword, animated: true)
    }
    

    
    @IBAction func logginingIn() {
        let userName = "UserName"
        let password = "12345"
        
        if nameTextField.text != userName || passwordTextField.text != password {
            let invalidDataAllert = UIAlertController.init(title: "Invalid name or password",
                                                     message: "Try again",
                                                     preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "Ok", style: .default)
            invalidDataAllert.addAction(cancelAction)
            self.present(invalidDataAllert, animated: true)
            passwordTextField.text = ""
            return
        }
        }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        nameTextField.text = ""
        passwordTextField.text = ""
    }
    
   
}

