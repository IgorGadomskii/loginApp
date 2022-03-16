

import UIKit

class LogInViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var forgetNameButton: UIButton!
    @IBOutlet weak var forgetPasswordButton: UIButton!
    
    let login = User()
    let password = User()
    let person = Person()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.returnKeyType = .next
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let tabBarController = segue.destination as! UITabBarController
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        for viewController in viewControllers {
            if let greetingsVC = viewController as? GreetingsViewController {
                let greetings = "Welcome, " + person.name + "!"
                greetingsVC.nameText = greetings
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
                let userInfo = person.returnMyInfo()
                aboutUserVC.info = userInfo
                
            }
        }
    }

    
    
    @IBAction func rememberringUserName() {
        alertMassage(title: "Forget your login?",
                     message: "Your login is UserName")
    }
    
    
    
    @IBAction func rememberringPassword() {
        alertMassage(title: "Forget you password?",
                     message: "Your pasword is 12345")
    }
    

    
    @IBAction func logginingIn() {
        
        if nameTextField.text != login.getLogin() ||
            passwordTextField.text != password.getPassword()  {
            alertMassage(title: "Invalid name or passsword",
                         message: "Try again")
            passwordTextField.text = ""
            return
        }
        }
    
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        nameTextField.text = ""
        passwordTextField.text = ""
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
    
    
    
    private func alertMassage (title: String?, message: String?){
        let message = message
        let title = title
        let alertNotification = UIAlertController.init(title: title,
                                                       message: message,
                                                       preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Ok", style: .default)
        alertNotification.addAction(cancelAction)
        self.present(alertNotification, animated: true)
    }
}

