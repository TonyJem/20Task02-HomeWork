import UIKit

class Cell: UICollectionViewCell {
    
    @IBOutlet weak var temperatureImage: UIImageView!
    
    func setTemperatureImage() {
        temperatureImage.image = UIImage(contentsOfFile: <#T##String#>)
    }
}
