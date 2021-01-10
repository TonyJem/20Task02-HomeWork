import UIKit

class Cell: UICollectionViewCell {
    
    @IBOutlet weak var temperatureImage: UIImageView!
    
    func setTemperatureImage(tempName: String) {
        temperatureImage.image = UIImage(named: tempName)
    }
}
