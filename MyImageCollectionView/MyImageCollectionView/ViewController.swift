import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionViewOne: UICollectionView!
    @IBOutlet weak var collectionViewTwo: UICollectionView!
    
    
    let arrayTemperature = ["temp.green",
                            "temp.blackGreen",
                            "temp.lightYellow",
                            "temp.darkYellow",
                            "temp.orange",
                            "temp.red"]
    
    let arraySmiles = ["favorite",
                 "nice",
                 "routine",
                 "notPleasant",
                 "bad",
                 "hate"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOne.dataSource = self
        collectionViewOne.delegate = self
        
        collectionViewTwo.dataSource = self
        collectionViewTwo.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == collectionViewOne {
            return arrayTemperature.count
        } else {
            return arraySmiles.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == collectionViewOne {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellOne", for: indexPath) as? Cell {
                let imageName = arrayTemperature[indexPath.row]
                cell.setTemperatureImage(tempName: imageName)
                return cell
            }
            return UICollectionViewCell()
        } else {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellTwo", for: indexPath) as? Cell {
                let imageName = arraySmiles[indexPath.row]
                cell.setSmileImage(faceName: imageName)
                return cell
            }
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ShowImageVC") as? ShowImageViewController else { return }
        var currentSelectedImage: String!
        
        if collectionView == collectionViewOne {
            currentSelectedImage = arrayTemperature[indexPath.row]
        }
        
        if collectionView == collectionViewTwo {
            currentSelectedImage = arraySmiles[indexPath.row]
        }

        vc.setImageName(name: currentSelectedImage)
        present(vc, animated: true, completion: nil)
        
    }
}
