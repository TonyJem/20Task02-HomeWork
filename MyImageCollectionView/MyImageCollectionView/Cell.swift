import UIKit

class Cell: UICollectionViewCell {
    
    @IBOutlet weak var temperatureImage: UIImageView!
    @IBOutlet weak var smileImage: UIImageView!
    
    func setTemperatureImage(tempName: String) {
        temperatureImage.image = UIImage(named: tempName)
    }
    
    func setSmileImage(faceName: String) {
        smileImage.image = UIImage(named: faceName)
    }
}
