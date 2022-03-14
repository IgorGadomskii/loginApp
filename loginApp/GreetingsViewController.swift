

import UIKit

class GreetingsViewController: UIViewController {

    @IBOutlet weak var logOutButton: UIButton!
    @IBOutlet weak var greetingsLabel: UILabel!
    
    var nameText: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       greetingsLabel.text = nameText
        
      
    }
    

    
 
}
