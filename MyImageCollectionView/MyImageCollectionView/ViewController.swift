import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionViewOne: UICollectionView!
    
    let arrayTemperature = ["temp.green",
                            "temp.blackGreen",
                            "temp.lightYellow",
                            "temp.darkYellow",
                            "temp.orange",
                            "temp.red"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOne.dataSource = self
        collectionViewOne.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayTemperature.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = UICollectionViewCell()
        return cell
    }
}
