
import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var userInfo: UILabel!
    var info: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userInfo.text = info
        
    }
    
    
 
}
