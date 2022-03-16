
import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var userInfo: UILabel!
    @IBOutlet weak var sorryLabel: UILabel!
    
    @IBOutlet weak var userImage: UIImageView!
    
    @IBOutlet weak var showExtraButton: UIButton!
    
    @IBOutlet weak var hiddenStackView: UIStackView!
    
    var info: String!
    var sorry: String!
    var extraImage: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userInfo.text = info
//        sorryLabel.text = sorry
        
        userImage.layer.cornerRadius = 10
        userImage.image = extraImage
    }

    
    @IBAction func showExtraIsPressed() {
        if hiddenStackView.isHidden {
            hiddenStackView.isHidden = false
            sorryLabel.text = sorry
            showExtraButton.setTitle("Hide extra", for: .normal)
        } else {
            showExtraButton.setTitle("Show extra", for: .normal)
            hiddenStackView.isHidden = true
        }
    }
    
    
 
}
