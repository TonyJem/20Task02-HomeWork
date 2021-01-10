import UIKit

class ShowImageViewController: UIViewController {
    
    @IBOutlet weak var currentImage: UIImageView!
    
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentImage.image = UIImage(named: imageName)
    }
    
    func setImageName(name: String) {
        imageName = name
    }
}
