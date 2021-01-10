import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionViewOne: UICollectionView!
    
    let arrayTemperature = ["temp.green",
                            "temp.blackGreen",
                            "temp.lightYellow",
                            "temp.darkYellow",
                            "temp.orange",
                            "temp.red"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
